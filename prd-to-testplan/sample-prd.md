# PRD: Payment Refund Feature

## Objective
Allow customers to request refunds for successful payments.

## Requirements
1. Only successful payments are eligible for refunds.
2. Refund amount cannot exceed the original payment amount.
3. Refund requests must have a unique refund ID.
4. Duplicate refund requests with the same idempotency key
   must not create multiple refunds.
5. The system must support full and partial refunds.
6. Refund status can be Pending, Success, or Failed.

## Acceptance Criteria
- Refund API rejects invalid payment IDs.
- Refund API rejects amounts greater than the refundable balance.
- Duplicate requests return the existing refund result.
- Customers can retrieve refund status using refund ID.