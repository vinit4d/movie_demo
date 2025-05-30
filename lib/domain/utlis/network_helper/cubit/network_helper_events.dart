part of 'network_helper_bloc.dart';

@immutable
abstract class NetworkEvent {}

class NetworkObserve extends NetworkEvent {}

class NetworkNotify extends NetworkEvent {
  final bool isConnected;

  NetworkNotify({this.isConnected = false});
}
