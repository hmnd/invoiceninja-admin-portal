import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/redux/app/app_actions.dart';
import 'package:invoiceninja_flutter/redux/client/client_actions.dart';
import 'package:invoiceninja_flutter/redux/credit/credit_actions.dart';
import 'package:invoiceninja_flutter/ui/app/invoice/invoice_email_view.dart';
import 'package:invoiceninja_flutter/ui/invoice/invoice_email_vm.dart';
import 'package:invoiceninja_flutter/utils/completers.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';
import 'package:invoiceninja_flutter/utils/platforms.dart';
import 'package:redux/redux.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/utils/app_context.dart';

class CreditEmailScreen extends StatelessWidget {
  const CreditEmailScreen({Key key}) : super(key: key);

  static const String route = '/credit/email';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, EmailCreditVM>(
      onInit: (Store<AppState> store) {
        final state = store.state;
        final creditId = state.uiState.creditUIState.selectedId;
        final credit = state.creditState.map[creditId];
        final client = state.clientState.map[credit.clientId];
        if (client.isStale) {
          store.dispatch(LoadClient(clientId: client.id));
        }
      },
      converter: (Store<AppState> store) {
        final state = store.state;
        final creditId = state.uiState.creditUIState.selectedId;
        final credit = state.creditState.map[creditId];
        return EmailCreditVM.fromStore(store, credit);
      },
      builder: (context, viewModel) {
        return InvoiceEmailView(
          viewModel: viewModel,
        );
      },
    );
  }
}

class EmailCreditVM extends EmailEntityVM {
  EmailCreditVM({
    AppState state,
    bool isLoading,
    bool isSaving,
    CompanyEntity company,
    InvoiceEntity invoice,
    ClientEntity client,
    Function loadClient,
    Function(BuildContext, EmailTemplate, String, String) onSendPressed,
  }) : super(
          state: state,
          isLoading: isLoading,
          isSaving: isSaving,
          company: company,
          invoice: invoice,
          client: client,
          loadClient: loadClient,
          onSendPressed: onSendPressed,
        );

  factory EmailCreditVM.fromStore(Store<AppState> store, InvoiceEntity credit) {
    final state = store.state;

    return EmailCreditVM(
      isLoading: state.isLoading,
      isSaving: state.isSaving,
      company: state.company,
      invoice: credit,
      client: state.clientState.map[credit.clientId],
      loadClient: () {
        store.dispatch(LoadClient(clientId: credit.clientId));
      },
      onSendPressed: (context, template, subject, body) {
        final completer = snackBarCompleter<Null>(
            context, AppLocalization.of(context).emailedCredit,
            shouldPop: isMobile(context));
        if (!isMobile(context)) {
          completer.future.then((value) {
            viewEntity(entity: credit, appContext: context.getAppContext());
          });
        }
        store.dispatch(EmailCreditRequest(
          completer: completer,
          creditId: credit.id,
          template: template,
          subject: subject,
          body: body,
        ));
      },
    );
  }
}
