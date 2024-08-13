import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Features/All_prodect/presention/view/All_prodect.dart';
import 'package:grocery/Features/Home/cubit/home_cubit.dart';
import 'package:grocery/Features/Home/prestion/view/widget/CustomAppBar.dart';
import 'package:grocery/Features/Home/prestion/view/widget/CustomImage.dart';
import 'package:grocery/Features/Home/prestion/view/widget/Drawer.dart';
import 'package:grocery/Features/Home/prestion/view_model/UserModel.dart';
import 'package:grocery/core/utils/constent.dart';
import 'package:grocery/core/utils/thema/AooColor.dart';
import 'package:grocery/core/utils/widget/CustomTextfieldSearch.dart';

import '../../../Custom_Prodect/presention/view/Custom_Prodect.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  User user =
      User(name: 'SalaH', email: 'dd@gmail.com', profilePictureUrl: 'url');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..fetchCategories(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final Cu = BlocProvider.of<HomeCubit>(context);

          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeLoaded) {
            return Scaffold(
              key: _scaffoldKey, // Assign the key here
              drawer: UserDrawer(
                OnTap: () {},
                user: user,
              ),
              resizeToAvoidBottomInset: false,
              body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      color1!,
                      color2!,
                      color2!,
                      Colors.white,
                      Colors.white,
                      color2!,
                      color2!,
                      color1!,
                    ],
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            CustomAppBar(onTap: () {}),
                            const SizedBox(height: 15),
                            const CustomImage(),
                            const SizedBox(height: 30),
                            CustomTextfieldSearch(
                              textEditingController: searchController,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Text(
                                  ' Category',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AllProdect(
                                                    data: Cu.data,
                                                  )));
                                    },
                                    child: Text(
                                      ' See All',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16, color: maincolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 2,
                        childAspectRatio: 10 / 16,
                        crossAxisCount:
                            (MediaQuery.of(context).size.width / 140).round(),
                        mainAxisSpacing: 5,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomProdect(
                                          id: Cu.data[index]['id'],
                                        )),
                              );
                            },
                            child: CustomItem(
                              name: Cu.data[index]['name'],
                              Url: Cu.data[index]['imgUrl'],
                            ),
                          );
                        },
                        childCount: Cu.data.length,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is HomeError) {
            return const Center(child: Text('Error fetching categories.'));
          } else {
            return const Center(child: Text('Unknown state.'));
          }
        },
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.name, required this.Url});
  final String Url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(Url)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
