
class QuoteController extends GetxController {
  var quotes = [].obs; 
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getQuotes();
  }

  void getQuotes() async {
    final url = 'https://dummyjson.com/quotez'; 
    

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final rawList = data['quotes']; 
      quotes.value = rawList; 
    }
    isLoading.value = false;
  }
}
