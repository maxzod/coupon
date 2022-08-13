## Features

- flexible to add your own coupon model
- support fixed coupons
- support percentage coupons
- calculate the discount value
- calculate total price after discount

## Getting started

## Usage

```dart
 final coupon = Coupon.percentage(discountPercentage: 30); // or use Coupon.fixed
 num discountValue = coupon.discountValueFor(200) ;  // 60
 num totalAfterDiscount = coupon.totalAfterDiscount(200); // 140;
```

## TODO

- [ ] support max discount value
- [ ] support Expire date for coupons
