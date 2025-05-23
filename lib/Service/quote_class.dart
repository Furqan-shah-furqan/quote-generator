import 'package:flutter/cupertino.dart';
import 'dart:math';

class QuoteClass with ChangeNotifier {
  final List<String> _quote = [
    "The power of positive thinking is the ability to generate a feeling of certainty in yourself when nothing in the environment supports you.\n— Tony Robbins",
    "When you are grateful, fear disappears and abundance appears.\n— Tony Robbins",
    "If you can’t, you must. If you must, you can.\n— Tony Robbins",
    "The only thing that’s keeping you from getting what you want is the story you keep telling yourself.\n— Tony Robbins",
    "Your past does not equal your future.\n— Tony Robbins",
    "Identify your problems, but give your power and energy to solutions.\n— Tony Robbins",
    "Any time you sincerely want to make a change, the first thing you must do is to raise your standards.\n— Tony Robbins",
    "The path to success is to take massive, determined action.\n— Tony Robbins",
    "Setting goals is the first step in turning the invisible into the visible.\n— Tony Robbins",
    "Goals are like magnets. They’ll attract the things that make them come true.\n— Tony Robbins",
    "You're braver than you believe, stronger than you seem, and smarter than you think.\n— A.A. Milne",
    "Only those who will risk going too far can possibly find out how far one can go.\n— T.S. Eliot",
    "I can’t think of any better representation of beauty than someone who is unafraid to be herself.\n— Emma Stone",
    "Smile and let everyone know that today, you’re a lot stronger than you were yesterday.\n— Drake",
    "Push yourself, because no one else is going to do it for you.\n— Anonymous",
    "Sometimes later becomes never. Do it now.\n— Anonymous",
    "Great things never come from comfort zones.\n— Anonymous",
    "To live a creative life, we must lose our fear of being wrong.\n— Anonymous",
    "Dream it. Wish it. Do it.\n— Anonymous",
    "Your limitation—it’s only your imagination.\n— Anonymous",
  ];

  late String currentQuote;

  // List<String> get quote => _quote;
  bool isloading = false;

  QuoteClass() {
    getQuote();
  }
  getQuote() {
    isloading = true;
    notifyListeners();

    currentQuote = _quote[Random().nextInt(_quote.length)];
    isloading = false;
    notifyListeners();
  }

  // bool isloading = false;

  // Future<void> getapi() async {
  //   isloading = true;
  //   notifyListeners();
  //   final url = 'https://api.quotable.io/random?minLength=100&maxLength=140';
  //   try {
  //     final response = await http.get(Uri.parse(url));

  //     if (response.statusCode == 200) {
  //       final data = jsonDecode(response.body);
  //       _quote = '${data['content']}\n\n— ${data['author']}';
  //     } else {
  //       _quote = 'Failed to fetch Quote';
  //     }
  //   } catch (e) {
  //     _quote = 'Unexpected Error';
  //     print('Error:$e');
  //   }
  //   isloading = false;
  //   notifyListeners();
  // }
}
