import 'package:coupon/coupon.dart';

void main() {
  final coupon =
      Coupon.percentage(discountPercentage: 30); // or use Coupon.fixed
  num discountValue = coupon.discountValueFor(200);
  print(discountValue); // 60
  num totalAfterDiscount = coupon.totalAfterDiscount(200);
  print(totalAfterDiscount); // 140
}
