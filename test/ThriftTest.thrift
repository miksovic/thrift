enum Numberz
{
  ONE = 1,
  TWO,
  THREE,
  FIVE = 5,
  SIX,
  EIGHT = 8
}

typedef u64 UserId

struct Xtruct
{
  string string_thing = 0,
  byte   byte_thing = 1,
  u32    u32_thing = 2,
  i32    i32_thing = 3,
  u64    u64_thing = 4,
  i64    i64_thing = 5
}

struct Xtruct2
{
  byte   byte_thing = 0,
  Xtruct struct_thing = 1,
  i32    i32_thing = 2
}

struct Insanity
{
  map<Numberz, UserId> userMap = 0,
  list<Xtruct> xtructs = 1
}

service ThriftTest
{
  void         testVoid()
  string       testString(string thing = 0)
  byte         testByte(byte thing = 0)
  u32          testU32(u32 thing = 0)
  i32          testI32(i32 thing = 0)
  u64          testU64(u64 thing = 0)
  i64          testI64(i64 thing = 0)
  Xtruct       testStruct(Xtruct thing = 0)
  Xtruct2      testNest(Xtruct2 thing = 0)
  map<i32,i32> testMap(map<i32,i32> thing = 0)
  set<i32>     testSet(set<i32> thing = 0)
  list<i32>    testList(list<i32> thing = 0)
  Numberz      testEnum(Numberz thing = 0)
  UserId       testTypedef(UserId thing = 0)

  map<i32,map<i32,i32>> testMapMap(i32 hello = 0)

  /* So you think you've got this all worked, out eh? */
  map<UserId, map<Numberz,Insanity>> testInsanity(Insanity argument = 0)
}
