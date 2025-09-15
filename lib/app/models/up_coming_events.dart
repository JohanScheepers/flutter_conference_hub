class UpComingEvents {
  final String event;
  final String location;
  final DateTime startDate;
  final DateTime endDate;

  const UpComingEvents({
    required this.event,
    required this.location,
    required this.startDate,
    required this.endDate,
  });

  UpComingEvents copyWith({
    String? event,
    String? location,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return UpComingEvents(
      event: event ?? this.event,
      location: location ?? this.location,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'event': event,
      'location': location,
      'startDate': startDate.millisecondsSinceEpoch,
      'endDate': endDate.millisecondsSinceEpoch,
    };
  }

  factory UpComingEvents.fromMap(Map<String, dynamic> map) {
    return UpComingEvents(
      event: map['event'] ?? '',
      location: map['location'] ?? '',
      startDate: DateTime.fromMillisecondsSinceEpoch(map['startDate']),
      endDate: DateTime.fromMillisecondsSinceEpoch(map['endDate']),
    );
  }

  @override
  String toString() {
    return 'UpComingEvents(event: $event, location: $location, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpComingEvents &&
        other.event == event &&
        other.location == location &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode {
    return event.hashCode ^
        location.hashCode ^
        startDate.hashCode ^
        endDate.hashCode;
  }
}