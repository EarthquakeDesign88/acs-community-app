class Covid {
  final int year;
  final int weekNum;
  final int newCase;
  final int totalCase;
  final int newCaseExcludeabroad;
  final int totalCaseExcludeabroad;
  final int newRecovered;
  final int totalRecovered;
  final int newDeath;
  final int totalDeath;

  Covid({
    required this.year,
    required this.weekNum,
    required this.newCase,
    required this.totalCase,
    required this.newCaseExcludeabroad,
    required this.totalCaseExcludeabroad,
    required this.newRecovered,
    required this.totalRecovered,
    required this.newDeath,
    required this.totalDeath,
  });

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
      year: json['year'],
      weekNum: json['weeknum'],
      newCase: json['new_case'],
      totalCase: json['total_case'],
      newCaseExcludeabroad: json['new_case_excludeabroad'],
      totalCaseExcludeabroad: json['total_case_excludeabroad'],
      newRecovered: json['new_recovered'],
      totalRecovered: json['total_recovered'],
      newDeath: json['new_death'],
      totalDeath: json['total_death'],
    );
  }
}
