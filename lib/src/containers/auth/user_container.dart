part of auth_containers;

class UserContainer extends StatelessWidget {
  final ViewModelBuilder<AppUser> builder;

  const UserContainer({Key key,@required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser>(
      converter: (Store<AppState> store) {
        return store.state.auth.user;
      },
      builder: builder,
    );
  }
}
