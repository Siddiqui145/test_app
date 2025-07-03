import 'package:flutter/material.dart';


class QuoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final QuoteController controller = Get.put(QuoteController());

    return Scaffold(
      appBar: AppBar(title: Text('GetX Quote View')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.quotes.length,
          itemBuilder: (context, index) {
            var item = controller.quotes[index]; 
            return ListTile(
              title: Text(item['quote']),
              subtitle: Text(item['author']),
            );
          },
        );
      }),
    );
  }
}
