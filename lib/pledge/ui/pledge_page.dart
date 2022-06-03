import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pledge/widget/custom_container.dart';
import 'package:pledge/widget/custom_text_field.dart';

class PledgePage extends StatelessWidget {
  const PledgePage({Key? key}) : super(key: key);

  // Color de_color = Color(#07877B);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomContainer(
            height: 50,
            child: Center(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff292C33),
                    ),
                    iconSize: 24,
                    onPressed: () {
                      Navigator.of(context).pop(context);
                    },
                  ),
                  CustomTextField(
                    data: "Funds",
                    size: 16,
                    color: Color(0xff292C33),
                    align: TextAlign.left,
                  )
                ],
              ),
            ),
          ),
          DefaultTabController(
              length: 3,
              child: Column(children: [
                CustomContainer(
                  alignmentGeometry: Alignment.topLeft,
                  child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color(0xff07877B),
                    tabs: [
                      Tab(
                        child: CustomTextField(
                          data: "Funds",
                          size: 14,
                        ),
                      ),
                      Tab(
                        child: CustomTextField(
                          data: "Allocation",
                          size: 14,
                        ),
                      ),
                      Tab(
                        child: CustomTextField(
                          data: "Pledge",
                          size: 14,
                        ),
                      ),
                    ],
                    unselectedLabelColor: Color(0xff7A828F),
                    labelColor: Color(0xff07877B),
                  ),
                ),
                CustomContainer(
                  height: 550,
                  child: TabBarView(
                    children: [
                      Center(
                        child: CustomTextField(
                          data: "Funds",
                          size: 30,
                        ),
                      ),
                      Center(
                        child: CustomTextField(
                          data: "Allocation",
                          size: 30,
                        ),
                      ),
                      CustomContainer(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: CustomContainer(
                                color: Color(0xffF5F8FA),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      CustomContainer(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: CustomTextField(
                                                data:
                                                    "Collateral (Liquid Fund)",
                                                color: Color(0xff7A828F),
                                                size: 12,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            CustomTextField(
                                              data: "₹ 10,000",
                                              color: Color(0xff292C33),
                                              size: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      CustomContainer(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: CustomTextField(
                                                data: "Collateral (Equity)",
                                                color: Color(0xff7A828F),
                                                size: 12,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            CustomTextField(
                                              data: "₹9,000",
                                              color: Color(0xff292C33),
                                              size: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Divider(
                                        height: 0,
                                        thickness: 1,
                                        color: Color(0xffE8EBED),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      CustomContainer(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: CustomTextField(
                                                data: "Total Collateral",
                                                color: Color(0xff7A828F),
                                                size: 12,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                            CustomTextField(
                                              data: "₹ 19,000",
                                              color: Color(0xff292C33),
                                              size: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            CustomContainer(
                              child: Column(
                                children: [
                                  CustomContainer(
                                    container_padding: EdgeInsets.only(
                                        left: 16, bottom: 10, top: 10),
                                    width: MediaQuery.of(context).size.width,
                                    child: CustomTextField(
                                      data: "Total Pledge Benefits",
                                      size: 14,
                                      color: Color(0xff292C33),
                                      align: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: CustomContainer(
                                      child: Column(
                                        children: [
                                          CustomContainer(
                                            container_padding:
                                                EdgeInsets.all(8),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: CustomTextField(
                                                    data: "Cash",
                                                    color: Color(
                                                      0xff7A828F,
                                                    ),
                                                    size: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                CustomTextField(
                                                  data: "₹ 10,000",
                                                  color: Color(0xff292C33),
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomContainer(
                                            color: Color(0xffF5F8FA),
                                            container_padding:
                                                EdgeInsets.all(8),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: CustomTextField(
                                                    data: "MTF",
                                                    color: Color(0xff7A828F),
                                                    size: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                CustomTextField(
                                                  data: "₹9,000",
                                                  color: Color(0xff292C33),
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomContainer(
                                            container_padding:
                                                EdgeInsets.all(8),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: CustomTextField(
                                                    data: "FO",
                                                    color: Color(0xff7A828F),
                                                    size: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                CustomTextField(
                                                  data: "₹ 800.00",
                                                  color: Color(0xff292C33),
                                                  size: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CustomContainer(
                              child: ExpansionTile(
                                childrenPadding:
                                    EdgeInsets.fromLTRB(16, 0, 16, 8),
                                title: CustomTextField(
                                  data: "Pledge with Exchange Repledge Benefit",
                                  color: Color(0xff292C33),
                                  size: 14,
                                ),
                                children: [
                                  CustomContainer(
                                    child: Column(
                                      children: [
                                        CustomContainer(
                                          container_padding: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomTextField(
                                                  data: "Cash",
                                                  color: Color(
                                                    0xff7A828F,
                                                  ),
                                                  size: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              CustomTextField(
                                                data: "₹ 10,000",
                                                color: Color(0xff292C33),
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomContainer(
                                          color: Color(0xffF5F8FA),
                                          container_padding: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomTextField(
                                                  data: "FO",
                                                  color: Color(
                                                    0xff7A828F,
                                                  ),
                                                  size: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              CustomTextField(
                                                data: "₹ 800,000",
                                                color: Color(0xff292C33),
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CustomContainer(
                              child: ExpansionTile(
                                childrenPadding:
                                    EdgeInsets.fromLTRB(16, 0, 16, 0),
                                title: CustomTextField(
                                  data:
                                      "Pledge without Exchange Repledge Benefit",
                                  color: Color(0xff292C33),
                                  size: 14,
                                ),
                                children: [
                                  CustomContainer(
                                    child: Column(
                                      children: [
                                        CustomContainer(
                                          container_padding: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomTextField(
                                                  data: "Cash",
                                                  color: Color(
                                                    0xff7A828F,
                                                  ),
                                                  size: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              CustomTextField(
                                                data: "₹ 10,000",
                                                color: Color(0xff292C33),
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomContainer(
                                          color: Color(0xffF5F8FA),
                                          container_padding: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomTextField(
                                                  data: "FO",
                                                  color: Color(
                                                    0xff7A828F,
                                                  ),
                                                  size: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              CustomTextField(
                                                data: "₹ 800,000",
                                                color: Color(0xff292C33),
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
