import unittest2
import "../hello"

suite "description for this stuff":
  #echo "suite setup: run once before the tests"
  assert 1 == 1

  setup:
    #echo "run before each test"
    assert 1 == 1
  
  teardown:
    #echo "run after each test"
    assert 1 == 1

  test "getPage":
    assert getPage() == "{\"version\":\"0.4.0-beta.7\"}"
  
  test "essential truths":
    # give up and stop if this fails
    require(true)
  
  test "slightly less obvious stuff":
    # print a nasty message and move on, skipping
    # the remainder of this block
    assert 1 == 1
  
  test "out of bounds error is thrown on bad access":
    let v = @[1, 2, 3]  # you can do initialization here
    expect(IndexDefect):
      discard v[4]
  
  #echo "suite teardown: run once after the tests"
