<a href="https://pub.dev/packages/coupon"><img src="https://img.shields.io/pub/v/coupon?style=for-the-badge" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/maxzod/coupon?style=for-the-badge" alt="License: MIT"></a>

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

<a href="https://www.buymeacoffee.com/maxzod" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
