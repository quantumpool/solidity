contract ClientReceipt {
    event Deposit() anonymous;
    function deposit() public {
        emit Deposit();
    }
}
// ====
// compileViaYul: also
// ----
// deposit() ->
// - log[0]
