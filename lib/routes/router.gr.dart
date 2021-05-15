// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/book_details_page.dart' as _i6;
import '../pages/books_page.dart' as _i5;
import '../pages/email_page.dart' as _i8;
import '../pages/home_page.dart' as _i3;
import '../pages/login_page.dart' as _i7;
import '../pages/login_wrapper_page.dart' as _i4;
import '../pages/password_page.dart' as _i9;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    LoginWrapperPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LoginWrapperPageArgs>(
              orElse: () => const LoginWrapperPageArgs());
          return _i4.LoginWrapperPage(key: args.key, onLogin: args.onLogin);
        }),
    BooksRouter.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.BooksPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false),
    BookDetailsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<BookDetailsRouteArgs>(
              orElse: () =>
                  BookDetailsRouteArgs(bookId: pathParams.getInt('bookId')));
          return _i6.BookDetailsPage(bookId: args.bookId);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    LoginRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.LoginPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    EmailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.EmailPage();
        }),
    PasswordRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.PasswordPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LoginWrapperPage.name, path: '/login', children: [
          _i1.RouteConfig(EmailRoute.name, path: ''),
          _i1.RouteConfig(PasswordRoute.name, path: 'password')
        ]),
        _i1.RouteConfig(BooksRouter.name, path: '/books'),
        _i1.RouteConfig(BookDetailsRoute.name, path: 'books/:bookId'),
        _i1.RouteConfig(LoginRoute.name, path: '/login')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class LoginWrapperPage extends _i1.PageRouteInfo<LoginWrapperPageArgs> {
  LoginWrapperPage(
      {_i2.Key? key,
      dynamic Function(bool)? onLogin,
      List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/login',
            args: LoginWrapperPageArgs(key: key, onLogin: onLogin),
            initialChildren: children);

  static const String name = 'LoginWrapperPage';
}

class LoginWrapperPageArgs {
  const LoginWrapperPageArgs({this.key, this.onLogin});

  final _i2.Key? key;

  final dynamic Function(bool)? onLogin;
}

class BooksRouter extends _i1.PageRouteInfo {
  const BooksRouter() : super(name, path: '/books');

  static const String name = 'BooksRouter';
}

class BookDetailsRoute extends _i1.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({required int bookId})
      : super(name,
            path: 'books/:bookId',
            args: BookDetailsRouteArgs(bookId: bookId),
            rawPathParams: {'bookId': bookId});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({required this.bookId});

  final int bookId;
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class EmailRoute extends _i1.PageRouteInfo {
  const EmailRoute() : super(name, path: '');

  static const String name = 'EmailRoute';
}

class PasswordRoute extends _i1.PageRouteInfo {
  const PasswordRoute() : super(name, path: 'password');

  static const String name = 'PasswordRoute';
}
