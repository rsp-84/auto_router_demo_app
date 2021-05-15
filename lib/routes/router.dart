import 'package:auto_route/auto_route.dart';
import '../pages/book_details_page.dart';
import '../pages/books_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';

/// This is the root router. It is the top-level router of the app and serves
/// as the entry point of the app. Can use @AdaptiveAutoRouter, @MaterialAutoRouter
/// or @CupertinoAutoRouter
///
/// Declare routes with AutoRoute:
///
/// If no paths are defined in AutoRoute it will be generated based on the
/// class name. Initial: true means the path will be '/'
/// BooksPage will be books-page in the auto generated file
///
/// We will set our paths
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(
    //   path: '/login',
    //   page: LoginWrapperPage,
    //   children: [
    //     AutoRoute(page: EmailPage),
    //     AutoRoute(page: PasswordPage),
    //   ],
    // ),
    CustomRoute(
      page: BooksPage,
      name: 'BooksRouter',
      path: '/books',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: BookDetailsPage,
      path: 'books/:bookId',
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: LoginPage,
      path: '/login',
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
