import 'dart:convert';

import 'package:equatable/equatable.dart';

class CreateRefundAttributes extends Equatable {
  final int amount;
  final String? notes;
  final String paymentId;
  final String reason;
  final Map<String, dynamic> metadata;
  const CreateRefundAttributes({
    required this.amount,
    this.notes,
    required this.paymentId,
    required this.reason,
    required this.metadata,
  });

  CreateRefundAttributes copyWith({
    int? amount,
    String? notes,
    String? paymentId,
    String? reason,
    Map<String, dynamic>? metadata,
  }) {
    return CreateRefundAttributes(
      amount: amount ?? this.amount,
      notes: notes ?? this.notes,
      paymentId: paymentId ?? this.paymentId,
      reason: reason ?? this.reason,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'notes': notes,
      'payment_id': paymentId,
      'reason': reason,
      'metadata': metadata,
    };
  }

  factory CreateRefundAttributes.fromMap(Map<String, dynamic> map) {
    return CreateRefundAttributes(
      amount: map['amount']?.toInt() ?? 0,
      notes: map['notes'],
      paymentId: map['payment_id'] ?? '',
      reason: map['reason'] ?? '',
      metadata: Map<String, dynamic>.from(map['metadata'] ?? const {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateRefundAttributes.fromJson(String source) =>
      CreateRefundAttributes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateRefundAttributes(amount: $amount, notes: $notes, paymentId: $paymentId, reason: $reason, metadata: $metadata)';
  }

  @override
  List<Object?> get props {
    return [
      amount,
      notes,
      paymentId,
      reason,
      metadata,
    ];
  }
}
