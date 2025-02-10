import 'dart:developer' as dv;

void logDev(
  dynamic e,
  String where, {
  bool success = false,
  bool error = false,
  bool info = false,
  bool special = false,
  bool api = false,
  bool ghost = false,
  bool alien = false,
}) {
  final omit = [];
  if (omit.contains(where)) {
    return;
  }
  String lg = '$where::: $e';

  if (success) lg = lg.success;
  if (error) lg = lg.error;
  if (info) lg = lg.info;
  if (special) lg = lg.special;
  if (api) lg = lg.api;
  if (alien) lg = lg.alien;
  if (ghost) lg = lg.ghost;

  dv.log(lg);
}

extension ColorLog on String {
  String get success => '✅:$this';
  String get error => '⛔️:$this';
  String get info => 'ℹ️:$this';
  String get special => '🔵:$this';
  String get api => '🔥:$this';
  String get alien => '👽:$this';
  String get ghost => '👻:$this';
}
