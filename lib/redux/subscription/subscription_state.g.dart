// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscriptionState> _$subscriptionStateSerializer =
    new _$SubscriptionStateSerializer();
Serializer<SubscriptionUIState> _$subscriptionUIStateSerializer =
    new _$SubscriptionUIStateSerializer();

class _$SubscriptionStateSerializer
    implements StructuredSerializer<SubscriptionState> {
  @override
  final Iterable<Type> types = const [SubscriptionState, _$SubscriptionState];
  @override
  final String wireName = 'SubscriptionState';

  @override
  Iterable<Object> serialize(Serializers serializers, SubscriptionState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(SubscriptionEntity)
          ])),
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  SubscriptionState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(SubscriptionEntity)
              ])));
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SubscriptionUIStateSerializer
    implements StructuredSerializer<SubscriptionUIState> {
  @override
  final Iterable<Type> types = const [
    SubscriptionUIState,
    _$SubscriptionUIState
  ];
  @override
  final String wireName = 'SubscriptionUIState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SubscriptionUIState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'listUIState',
      serializers.serialize(object.listUIState,
          specifiedType: const FullType(ListUIState)),
      'tabIndex',
      serializers.serialize(object.tabIndex,
          specifiedType: const FullType(int)),
    ];
    if (object.editing != null) {
      result
        ..add('editing')
        ..add(serializers.serialize(object.editing,
            specifiedType: const FullType(SubscriptionEntity)));
    }
    if (object.selectedId != null) {
      result
        ..add('selectedId')
        ..add(serializers.serialize(object.selectedId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SubscriptionUIState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionUIStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'editing':
          result.editing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubscriptionEntity))
              as SubscriptionEntity);
          break;
        case 'listUIState':
          result.listUIState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListUIState)) as ListUIState);
          break;
        case 'selectedId':
          result.selectedId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tabIndex':
          result.tabIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SubscriptionState extends SubscriptionState {
  @override
  final BuiltMap<String, SubscriptionEntity> map;
  @override
  final BuiltList<String> list;

  factory _$SubscriptionState(
          [void Function(SubscriptionStateBuilder) updates]) =>
      (new SubscriptionStateBuilder()..update(updates)).build();

  _$SubscriptionState._({this.map, this.list}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('SubscriptionState', 'map');
    }
    if (list == null) {
      throw new BuiltValueNullFieldError('SubscriptionState', 'list');
    }
  }

  @override
  SubscriptionState rebuild(void Function(SubscriptionStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionStateBuilder toBuilder() =>
      new SubscriptionStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionState && map == other.map && list == other.list;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc($jc(0, map.hashCode), list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscriptionState')
          ..add('map', map)
          ..add('list', list))
        .toString();
  }
}

class SubscriptionStateBuilder
    implements Builder<SubscriptionState, SubscriptionStateBuilder> {
  _$SubscriptionState _$v;

  MapBuilder<String, SubscriptionEntity> _map;
  MapBuilder<String, SubscriptionEntity> get map =>
      _$this._map ??= new MapBuilder<String, SubscriptionEntity>();
  set map(MapBuilder<String, SubscriptionEntity> map) => _$this._map = map;

  ListBuilder<String> _list;
  ListBuilder<String> get list => _$this._list ??= new ListBuilder<String>();
  set list(ListBuilder<String> list) => _$this._list = list;

  SubscriptionStateBuilder();

  SubscriptionStateBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _list = _$v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubscriptionState;
  }

  @override
  void update(void Function(SubscriptionStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscriptionState build() {
    _$SubscriptionState _$result;
    try {
      _$result = _$v ??
          new _$SubscriptionState._(map: map.build(), list: list.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubscriptionState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SubscriptionUIState extends SubscriptionUIState {
  @override
  final SubscriptionEntity editing;
  @override
  final ListUIState listUIState;
  @override
  final String selectedId;
  @override
  final int tabIndex;
  @override
  final Completer<SelectableEntity> saveCompleter;
  @override
  final Completer<Null> cancelCompleter;

  factory _$SubscriptionUIState(
          [void Function(SubscriptionUIStateBuilder) updates]) =>
      (new SubscriptionUIStateBuilder()..update(updates)).build();

  _$SubscriptionUIState._(
      {this.editing,
      this.listUIState,
      this.selectedId,
      this.tabIndex,
      this.saveCompleter,
      this.cancelCompleter})
      : super._() {
    if (listUIState == null) {
      throw new BuiltValueNullFieldError('SubscriptionUIState', 'listUIState');
    }
    if (tabIndex == null) {
      throw new BuiltValueNullFieldError('SubscriptionUIState', 'tabIndex');
    }
  }

  @override
  SubscriptionUIState rebuild(
          void Function(SubscriptionUIStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionUIStateBuilder toBuilder() =>
      new SubscriptionUIStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionUIState &&
        editing == other.editing &&
        listUIState == other.listUIState &&
        selectedId == other.selectedId &&
        tabIndex == other.tabIndex &&
        saveCompleter == other.saveCompleter &&
        cancelCompleter == other.cancelCompleter;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, editing.hashCode), listUIState.hashCode),
                    selectedId.hashCode),
                tabIndex.hashCode),
            saveCompleter.hashCode),
        cancelCompleter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscriptionUIState')
          ..add('editing', editing)
          ..add('listUIState', listUIState)
          ..add('selectedId', selectedId)
          ..add('tabIndex', tabIndex)
          ..add('saveCompleter', saveCompleter)
          ..add('cancelCompleter', cancelCompleter))
        .toString();
  }
}

class SubscriptionUIStateBuilder
    implements Builder<SubscriptionUIState, SubscriptionUIStateBuilder> {
  _$SubscriptionUIState _$v;

  SubscriptionEntityBuilder _editing;
  SubscriptionEntityBuilder get editing =>
      _$this._editing ??= new SubscriptionEntityBuilder();
  set editing(SubscriptionEntityBuilder editing) => _$this._editing = editing;

  ListUIStateBuilder _listUIState;
  ListUIStateBuilder get listUIState =>
      _$this._listUIState ??= new ListUIStateBuilder();
  set listUIState(ListUIStateBuilder listUIState) =>
      _$this._listUIState = listUIState;

  String _selectedId;
  String get selectedId => _$this._selectedId;
  set selectedId(String selectedId) => _$this._selectedId = selectedId;

  int _tabIndex;
  int get tabIndex => _$this._tabIndex;
  set tabIndex(int tabIndex) => _$this._tabIndex = tabIndex;

  Completer<SelectableEntity> _saveCompleter;
  Completer<SelectableEntity> get saveCompleter => _$this._saveCompleter;
  set saveCompleter(Completer<SelectableEntity> saveCompleter) =>
      _$this._saveCompleter = saveCompleter;

  Completer<Null> _cancelCompleter;
  Completer<Null> get cancelCompleter => _$this._cancelCompleter;
  set cancelCompleter(Completer<Null> cancelCompleter) =>
      _$this._cancelCompleter = cancelCompleter;

  SubscriptionUIStateBuilder();

  SubscriptionUIStateBuilder get _$this {
    if (_$v != null) {
      _editing = _$v.editing?.toBuilder();
      _listUIState = _$v.listUIState?.toBuilder();
      _selectedId = _$v.selectedId;
      _tabIndex = _$v.tabIndex;
      _saveCompleter = _$v.saveCompleter;
      _cancelCompleter = _$v.cancelCompleter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionUIState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubscriptionUIState;
  }

  @override
  void update(void Function(SubscriptionUIStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscriptionUIState build() {
    _$SubscriptionUIState _$result;
    try {
      _$result = _$v ??
          new _$SubscriptionUIState._(
              editing: _editing?.build(),
              listUIState: listUIState.build(),
              selectedId: selectedId,
              tabIndex: tabIndex,
              saveCompleter: saveCompleter,
              cancelCompleter: cancelCompleter);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'editing';
        _editing?.build();
        _$failedField = 'listUIState';
        listUIState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubscriptionUIState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
