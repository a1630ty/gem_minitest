require 'test_helper'
require 'gem_minitest'
 
class GemMinitestTest < Minitest::Test
    def setup
        @test = GemMiniTest.new
    end
 
    #oddtest
    def test_odd
        assert_equal(false,@test.odd(0))
        assert_equal(true,@test.odd(1))
        assert_equal(false,@test.odd(2))
        assert_equal(true,@test.odd(3))
    end
 
    #check_numbertest
    def test_check_number
        assert_equal(false,@test.check_number(0))
        assert_equal(false,@test.check_number(123))
        assert_equal(true,@test.check_number(1234))
        assert_equal(false,@test.check_number(9999))
        assert_equal(false,@test.check_number(44444))
    end
 
    #enough_lengthtest
    def test_enough_length
        assert_equal(false,@test.enough_length("12"))
        assert_equal(true,@test.enough_length("123"))
        assert_equal(true,@test.enough_length("12345678"))
        assert_equal(false,@test.enough_length("123456789"))
    end
 
    #dividetest
    def test_divide
        assert_equal(2,@test.divide(4, 2))
        assert_equal(10,@test.divide(100, 10))
    end
 
    #fizz_buzztest
    def test_fizz_buzz
        assert_equal("",@test.fizz_buzz(0))
        assert_equal("Fizz",@test.fizz_buzz(3))
        assert_equal("Buzz",@test.fizz_buzz(5))
        assert_equal("FizzBuzz",@test.fizz_buzz(15))
        assert_equal("Fizz",@test.fizz_buzz(6))
        assert_equal("Buzz",@test.fizz_buzz(10))
        assert_equal("FizzBuzz", @test.fizz_buzz(30))
    end
    #hellotest
    def test_hello
        assert_output("Hello\n") { @test.hello}
    end
end

