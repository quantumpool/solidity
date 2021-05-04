contract ClientReceipt {
    event Deposit();
    function deposit() public {
        emit Deposit();
    }
}
// ====
// compileViaYul: also
// ----
// deposit() ->
// - log[0]
// -   topic[0]: keccak256('Deposit()')
