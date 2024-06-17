import Debug "mo:base/Debug";
actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 2384;

 public func toUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

public func withdraw(amount: Nat){
  var temp: Int = currentValue - amount;
  if ( temp >= 0){
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
  }
  else{
    Debug.print("Not Sufficient money in you bank account")

  }
};

public query func checkBalance(): async Nat {
  return currentValue;
};
  
}