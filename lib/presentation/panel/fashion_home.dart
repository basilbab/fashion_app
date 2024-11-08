import 'package:fashion_app/domain/fashion_model.dart';
import 'package:flutter/material.dart';

class ScreenFashionHome extends StatefulWidget {
  const ScreenFashionHome({super.key});

  @override
  State<ScreenFashionHome> createState() => _ScreenFashionHomeState();
}

class _ScreenFashionHomeState extends State<ScreenFashionHome> {
  final itemNameController = TextEditingController();
  final itemQuantityController = TextEditingController();
  final itemPriceController = TextEditingController();
  List<FashionModel> stockModelList = [
    FashionModel(
        itemId: '1',
        itemName: 'Shirt',
        itemPrice: '1500',
        itemQuantity: '15',
        userId: '123'),
    FashionModel(
        itemId: '2',
        itemName: 'T-Shirt',
        itemPrice: '2500',
        itemQuantity: '25',
        userId: '123'),
    FashionModel(
        itemId: '3',
        itemName: 'Sports Shoe',
        itemPrice: '1500',
        itemQuantity: '15',
        userId: '123'),
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fashion App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: itemNameController,
                            decoration: const InputDecoration(
                                hintText: 'Item Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Write the code to add the .....
                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: itemQuantityController,
                            decoration: const InputDecoration(
                                hintText: 'Quantity',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: itemPriceController,
                            decoration: const InputDecoration(
                                hintText: 'Unit Price',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          //Write code to change status
                        },
                        leading: Text((index + 1).toString()),
                        title: Text(
                          stockModelList[index].itemName,
                          style: const TextStyle(
                              fontSize: 23, color: Colors.purple),
                        ),
                        subtitle: Row(
                          children: [
                            Text('Price-${stockModelList[index].itemPrice}/',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            Text(
                                'Quantity-${stockModelList[index].itemQuantity}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  //Write the code to delete .....
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: stockModelList.length,
                ))
          ],
        ),
      ),
    );
  }
}
