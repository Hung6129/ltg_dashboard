// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dientichthumua_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DienTichThuMuaStore on _DienTichThuMuaStore, Store {
  Computed<bool>? _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: '_DienTichThuMuaStore.hasResults'))
          .value;
  Computed<bool>? _$isBusyComputed;

  @override
  bool get isBusy => (_$isBusyComputed ??= Computed<bool>(() => super.isBusy,
          name: '_DienTichThuMuaStore.isBusy'))
      .value;

  late final _$fetchFutureAtom =
      Atom(name: '_DienTichThuMuaStore.fetchFuture', context: context);

  @override
  ObservableFuture<List<KpiDienTichThuMua>> get fetchFuture {
    _$fetchFutureAtom.reportRead();
    return super.fetchFuture;
  }

  @override
  set fetchFuture(ObservableFuture<List<KpiDienTichThuMua>> value) {
    _$fetchFutureAtom.reportWrite(value, super.fetchFuture, () {
      super.fetchFuture = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('_DienTichThuMuaStore.fetchData', context: context);

  @override
  Future<List<KpiDienTichThuMua>> fetchData(
      KpiDienTichThuMuaInputDto inputDto) {
    return _$fetchDataAsyncAction.run(() => super.fetchData(inputDto));
  }

  @override
  String toString() {
    return '''
fetchFuture: ${fetchFuture},
hasResults: ${hasResults},
isBusy: ${isBusy}
    ''';
  }
}
