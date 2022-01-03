class PaymentPlan {
  String title, paymentPlanImage;

  PaymentPlan({this.title, this.paymentPlanImage});

  factory PaymentPlan.fromJson(Map<String, dynamic> json) {
    return PaymentPlan(
      title: json['title'] == null ? '' : json['title'],
      paymentPlanImage:
          json['paymentPlanImage'] == null ? '' : json['paymentPlanImage'],
    );
  }
}
