import 'package:flutter/material.dart';
import 'package:shoppify_app/pages/forget_password.dart';
import 'package:shoppify_app/pages/login_page.dart';
import 'package:shoppify_app/pages/signup_page.dart';
import 'package:shoppify_app/utils/constants/colors_constants.dart';
import 'package:shoppify_app/utils/constants/strings_constants.dart';

class RegisterTabPages extends StatefulWidget {
  const RegisterTabPages({super.key});

  @override
  State<RegisterTabPages> createState() => _RegisterTabPagesState();
}

class _RegisterTabPagesState extends State<RegisterTabPages> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: ColorsConstants.bgColor,
      body: Column(
        children: [
          SizedBox(height: 50,),
          designTabs(theme, context),
          buildTabBarPages(),
        ],
      ),
    );
  }

  Theme designTabs(ThemeData theme, BuildContext context) {
    return Theme(
            data: theme.copyWith(
              colorScheme: theme.colorScheme.copyWith(
                surfaceVariant: Colors.transparent,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelStyle: Theme.of(context).textTheme.displayLarge,
              indicatorColor: Colors.transparent,
              // change hover color
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
              return ColorsConstants.bgColor; //<-- SEE HERE
              return null;
              },),
              tabs: const [
                // first tab
                Tab(
                  text: StringsConstants.login,
                ),

                // second tab
                Tab(
                  text: StringsConstants.forgetPassword,
                ),
                // third tab
                Tab(
                  text: StringsConstants.signUP,
                ),
              ],
            ),
          );
  }
  Expanded buildTabBarPages() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: const [
          // first tab bar view widget
          LoginPage(),

          // second tab bar view widget
          ForgetPassword(),
          // third tab bar view widget
          SignUpPage()


        ],
      ),
    );
  }
}
