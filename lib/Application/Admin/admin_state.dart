part of 'admin_bloc.dart';

abstract class AdminState {}

class Idle extends AdminState {}

class Loading extends AdminState {}

class UsersLoaded extends AdminState {
  final List<User> users;
  UsersLoaded(this.users);
}

class UserLoaded extends AdminState {
  final User user;
  UserLoaded(this.user);
}

class UserDeleted extends AdminState {
  final int id;
  UserDeleted(this.id);
}

class RoleChanged extends AdminState {
  int id;
  RoleChanged(this.id);
}

class PharmacyLoaded extends AdminState {
  final APharmacy pharmacy;
  PharmacyLoaded(this.pharmacy);
}

class PharmacyDeleted extends AdminState {
  final int id;
  PharmacyDeleted(this.id);
}

class PharmaciesLoaded extends AdminState {
  final List<APharmacy> pharmacies;
  PharmaciesLoaded(this.pharmacies);
}

class UpdateFailed extends AdminState {
  String? msg;
  UpdateFailed({msg});
}

class LoadingFailed extends AdminState {
  String? msg;
  LoadingFailed({this.msg});
}

class DeleteFailed extends AdminState {
  String? msg;
  DeleteFailed({this.msg});
}

class ChangeFailed extends AdminState {
  int id;
  ChangeFailed(this.id);
}

class ErrorState extends AdminState {
  String? msg;
  ErrorState({
    this.msg,
  });
}
