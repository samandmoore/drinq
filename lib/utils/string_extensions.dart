extension StringX on String {
  bool get isNullOrBlank => this == null || trim().isEmpty;
}
