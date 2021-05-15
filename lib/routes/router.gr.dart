// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/book_details_page.dart' as _i4;
import '../pages/books_page.dart' as _i3;
import '../pages/home_page.dart' as _i6;
import '../pages/login_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BooksRouter.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.BooksPage();
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
          return _i4.BookDetailsPage(bookId: args.bookId);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    LoginRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BooksRouter.name, path: '/books'),
        _i1.RouteConfig(BookDetailsRoute.name, path: 'books/:bookId'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(HomeRoute.name, path: '/')
      ];
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

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}
