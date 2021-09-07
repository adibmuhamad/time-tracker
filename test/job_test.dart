import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker/app/home/models/job.dart';
import 'package:time_tracker/app/sign_in/validators.dart';
void main() {
  group('fromMap', () {
    test('null data', () {
      try {
        final job = Job.fromMap(null, 'abc');
      } on ArgumentError catch(e) {
        expect(e.message, 'Unexpected null for data');
        return;
      }
    });

    test('job with all properties', () {
      final job = Job.fromMap({
        'name': 'Blogging',
        'ratePerHour': 10,
      }, 'abc');
      // expect(job.name, 'Blogging');
      // expect(job.ratePerHour, 10);
      // expect(job.id, 'abc');
      expect(job, Job(id: 'abc', name: 'Blogging', ratePerHour: 10));
    });

    test('missing name', () {
      try {
        final job = Job.fromMap({
          'ratePerHour': 10,
        }, 'abc');
      } on ArgumentError catch(e) {
        expect(e.message, 'Unexpected null for name');
        return;
      }
    });
  });

  group('toMap', () {
    test('valid messae, ratePerHour', () {
      final job = Job(name: 'Blogging', ratePerHour: 10, id: 'abc');
      expect(job.toMap(), {
        'name': 'Blogging',
        'ratePerHour': 10,
      });
    });
  });
}