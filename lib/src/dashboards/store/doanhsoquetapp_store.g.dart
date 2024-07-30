// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doanhsoquetapp_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DoanhSoQuetAppStore on _DoanhSoQuetAppStore, Store {
  Computed<bool>? _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: '_DoanhSoQuetAppStore.hasResults'))
          .value;
  Computed<bool>? _$isBusyComputed;

  @override
  bool get isBusy => (_$isBusyComputed ??= Computed<bool>(() => super.isBusy,
          name: '_DoanhSoQuetAppStore.isBusy'))
      .value;

  late final _$fetchFutureAtom =
      Atom(name: '_DoanhSoQuetAppStore.fetchFuture', context: context);

  @override
  ObservableFuture<List<KpiDoanhSoQuetApp>> get fetchFuture {
    _$fetchFutureAtom.reportRead();
    return super.fetchFuture;
  }

  @override
  set fetchFuture(ObservableFuture<List<KpiDoanhSoQuetApp>> value) {
    _$fetchFutureAtom.reportWrite(value, super.fetchFuture, () {
      super.fetchFuture = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('_DoanhSoQuetAppStore.fetchData', context: context);

  @override
  Future<List<KpiDoanhSoQuetApp>> fetchData(
      KpiDoanhSoQuetAppInputDto inputDto) {
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
