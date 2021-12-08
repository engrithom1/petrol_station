import 'package:bloc/bloc.dart';
import '../pages/inventory.dart';
import '../pages/dashbord.dart';
import '../pages/sales.dart';
import '../pages/receiving.dart';
import '../pages/bank.dart';
import '../pages/expenditure.dart';
import '../pages/online_payment.dart';

enum NavigationEvents {
  DashbordClickedEvent,
  ReceivingClickedEvent,
  SalesClickedEvent,
  InventoryClickedEvent,
  BankClickedEvent,
  OnlinePaymentsClickedEvent,
  ExpenditureClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Dashbord();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashbordClickedEvent:
        yield Dashbord();
        break;

      case NavigationEvents.SalesClickedEvent:
        yield Sales();
        break;

      case NavigationEvents.ReceivingClickedEvent:
        yield Receiving();
        break;

      case NavigationEvents.InventoryClickedEvent:
        yield Inventory();
        break;

      case NavigationEvents.BankClickedEvent:
        yield Bank();
        break;

      case NavigationEvents.OnlinePaymentsClickedEvent:
        yield OnlinePayments();
        break;

      case NavigationEvents.ExpenditureClickedEvent:
        yield Expenditure();
        break;
    }
  }
}
