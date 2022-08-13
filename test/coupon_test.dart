import 'dart:math';

import 'package:test/test.dart';
import 'package:coupon/coupon.dart';

void main() {
  test(
    'isFixed return true if is Fixed Coupon',
    () => expect(Coupon.fixed(discountValue: 0).isFixed, isTrue),
  );
  test(
    'isFixed return false if is Percent Coupon',
    () => expect(Coupon.fixed(discountValue: 0).isPercent, isFalse),
  );
  test(
    'isPercent return true if is Percent Coupon',
    () => expect(Coupon.percentage(discountPercentage: 0).isPercent, isTrue),
  );
  test(
    'isPercent return false if is Fixed Coupon',
    () => expect(Coupon.percentage(discountPercentage: 0).isFixed, isFalse),
  );

  group(
    'discountValueFor',
    () {
      test(
        'it return discount value as fixed with fixed coupon ',
        () {
          final c1 = Coupon.fixed(discountValue: 200);
          expect(
            c1.discountValueFor(200),
            200,
            reason: 'fixed coupoun has a fixed discount value',
          );
        },
      );
      test(
        'it return totalBeforeDiscount if is precent and >= 100',
        () {
          final c2 = Coupon.percentage(discountPercentage: 150);
          expect(c2.discountValueFor(100), 100);
        },
      );
      test(
        'it calculate discount value if is precent and < 100',
        () {
          final randomPercent = Random().nextInt(99);
          final c2 = Coupon.percentage(discountPercentage: randomPercent);
          expect(c2.discountValueFor(100), randomPercent);
        },
      );
    },
  );
  group(
    'totalAfterDiscount',
    () {
      test(
        'it return total after discount with fixed coupon ',
        () {
          final c1 = Coupon.fixed(discountValue: 200);
          expect(
            c1.totalAfterDiscount(500),
            300,
            reason: 'fixed coupoun has a fixed discount value',
          );
        },
      );
      test(
        'it return 0 if is precent and >= 100',
        () {
          final c2 = Coupon.percentage(discountPercentage: 150);
          expect(c2.totalAfterDiscount(100), 0);
        },
      );
      test(
        'it return 0 if is fixed and total before discount == discount value',
        () {
          final c1 = Coupon.fixed(discountValue: 200);
          expect(c1.totalAfterDiscount(200), 0);
        },
      );
    },
  );
}
