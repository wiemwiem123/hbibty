import 'package:flutter/material.dart';

void main() {
  runApp(const chatbot());
}

class chatbot extends StatelessWidget {
  const chatbot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<ChatMessage> messages = [];
  var scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();

  List<Product> products = [
    Product(name: "Product A", price: 10.99, available: true),
    Product(name: "iphone", price: 5.99, available: false),
    Product(name: "Product C", price: 15.99, available: true),
    Product(name: "Product D", price: 8.99, available: true),
    Product(name: "Product E", price: 20.99, available: false),
  ];

  void scrollMethod() {
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  @override
  void initState() {
    super.initState();
    // Request audio recording permission before initializing the speechToText object
  }

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        messages.add(
          ChatMessage(
            text: _textController.text,
            type: ChatMessageType.user,
          ),
        );
      });
      scrollMethod();
      _textController.clear();
    }
  }

  void _getBotMessage(String userMessage) {
    bool productFound = false;

    if (products.isNotEmpty) {
      for (Product product in products) {
        if (userMessage.trim().toLowerCase() == product.name.toLowerCase()) {
          String message;
          if (product.available) {
            message =
                "${product.name} is available for ${product.price} dollars.";
          } else {
            message = "${product.name} is not currently available.";
          }
          setState(() {
            messages.add(
              ChatMessage(
                text: message,
                type: ChatMessageType.bot,
              ),
            );
          });

          productFound = true;
          break;
        }
      }
    }

    if (!productFound) {
      setState(() {
        messages.add(
          ChatMessage(
            text: "Sorry, we don't have that product available at the moment.",
            type: ChatMessageType.bot,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(239, 210, 125, 1),
        leading: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'Chat ',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                // Set the border radius to 20
                child: Container(
                    padding: EdgeInsets.all(20),
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: scrollController,
                        shrinkWrap: true,
                        itemCount: messages.length,
                        itemBuilder: (BuildContext context, int index) {
                          var chat = messages[index];
                          return ChatBubble(
                              chattext: chat.text, type: chat.type);
                        })),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'send a message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  TextButton(
                      onPressed: () {
                        var msg = _textController.text;
                        _sendMessage();
                        _getBotMessage(msg);
                      },
                      child: Icon(
                        Icons.send,
                        color: Color.fromRGBO(239, 210, 125, 1),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ChatBubble({required chattext, required ChatMessageType? type}) {
  return Row(
      crossAxisAlignment: type == ChatMessageType.bot
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        type == ChatMessageType.bot
            ? CircleAvatar(
                backgroundColor: Color.fromRGBO(239, 210, 125, 1),
                child: Icon(
                  Icons.smart_toy,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )
            : Container(),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: type == ChatMessageType.bot
                  ? Color.fromARGB(255, 112, 208, 206)
                  : Color.fromARGB(255, 199, 225, 239),
              borderRadius: type == ChatMessageType.bot
                  ? BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12))
                  : BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12)),
            ), // BoxDecoration
            child: Text(
              "$chattext",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ), // TextStyl
            ), // Text
          ),
        ),
        SizedBox(
          width: 12,
        ),
        SizedBox(
          height: 50,
        ),
        type == ChatMessageType.user
            ? CircleAvatar(
                backgroundColor: Color.fromRGBO(239, 210, 125, 1),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )
            : Container(),
      ]);
}

enum ChatMessageType {
  user,
  bot,
}

class ChatMessage {
  String? text;
  ChatMessageType? type;
  String? imageUrl; // added for image
  bool? available; // added for availability
  double? price; // added for price

  ChatMessage({
    required this.text,
    required this.type,
    this.imageUrl, // added for image
    this.available, // added for availability
    this.price, // added for price
  });
}

class Product {
  String name;
  double price;
  bool available;
  String? imageUrl; // add imageUrl field

  Product(
      {required this.name,
      required this.price,
      required this.available,
      this.imageUrl});
}
