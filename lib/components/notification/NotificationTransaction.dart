import 'package:aba_mobile_assigement/components/notification/NotificationTransactionCard.dart';
import 'package:flutter/cupertino.dart';

class NotificationTransaction extends StatelessWidget {
  const NotificationTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE5F0F4),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(12, (index) => const NotificationTransactionCard()),
            const SizedBox(height: 10,)
          ],

        ),
      ),
    );
  }
}
