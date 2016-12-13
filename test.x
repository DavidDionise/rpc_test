struct entry {
	string name<128>;
	string number<16>;

	struct entry *next;
};

struct r_val {
	int num;
	string message<128>;
};

program TEST_PROG {
  version TEST_VERS {
    r_val PRINT(entry) = 1;
  } = 1;
} = 0x55550011;