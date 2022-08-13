enum CouponType {
  fixed,
  percent,
}

class Coupon {
  /// discount value
  final num discount;

  /// fixed or percentage
  final CouponType type;

  const Coupon({
    required this.type,
    required this.discount,
  });

  factory Coupon.fixed({
    required num discountValue,
  }) =>
      Coupon(
        discount: discountValue,
        type: CouponType.fixed,
      );

  factory Coupon.percentage({
    required num discountPercentage,
  }) =>
      Coupon(
        discount: discountPercentage,
        type: CouponType.percent,
      );

  bool get isFixed => type == CouponType.fixed;

  bool get isPercent => type == CouponType.percent;

  num discountValueFor(num totalBeforeDiscount) {
    if (isFixed) {
      return discount;
    } else {
      if (discount >= 100) return totalBeforeDiscount;
      return (totalBeforeDiscount * discount) / 100;
    }
  }

  num totalAfterDiscount(
    num totalBeforeDiscount,
  ) =>
      totalBeforeDiscount - discountValueFor(totalBeforeDiscount);
}
