pragma experimental SMTChecker;

contract C {
	function f() public pure {
		uint a = 0;
		while (true) {
			do {
				break;
				a = 2;
			} while (true);
			a = 1;
			break;
		}
		assert(a == 2);
	}
}
// ====
// SMTSolvers: z3
// ----
// Warning 5740: (128-133): Unreachable code.
// Warning 5740: (147-151): Unreachable code.
// Warning 6328: (180-194): CHC: Assertion violation happens here.\nCounterexample:\n\na = 1\n\nTransaction trace:\nC.constructor()\nC.f()
