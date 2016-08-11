require "gem_minitest/version"

class GemMiniTest
     
    #6-2 メソッドの作成(1)整数を入力として受け取り，値が奇数ならば真を返す
    def odd(num)
        if (num % 2)==1 then
            return true
        else
            return false
        end
    end
     
    #6-3 メソッドの作成(2)引数が0 以外ではじまる4 桁の数字であり，なおかつ，値が偶数ならば真を返す
    def check_number(num)
        if num==0 then
            return false
        end
        
        if num.to_s.length != 4 then
            return false
        end
         
        if odd(num) then
            return false
        else
            return true
        end
    end
     
    #6-4 メソッドの作成(3)文字列を受け取り，その長さが3 文字以上，8 文字以下であれば真を返す
    def enough_length(str)
        if str.length >= 3 && str.length <= 8 then
            return true
        else
            return false
        end
    end
     
    #6-5 メソッドの作成(4)引数として割る数と割られる数を取り，割り算をした結果を返す．ただし，0 で割り算をしたら例外を発生する
    def divide(num_n, num_d)
        return num_n / num_d
    end
     
    #6-6 メソッドの作成(5)引数に数値を1 つとる．3 の倍数の時は”Fizz”を返す．5 の倍数の時は”Buzz”を返す．3 と5 の公倍数のときは”FizzBuzz”を返す．
    def fizz_buzz(num)
        if num==0 then
            return ""
        end
         
        if (((num % 3)==0) && ((num % 5)==0)) then
            return "FizzBuzz"
        end
         
        if (num % 3)==0 then
            return "Fizz"
        end
         
        if (num % 5)==0 then
            return "Buzz"
        end
         
        return ""
    end
    #6-7 メソッドの作成(6)標準出力に「Hello」と表示するプログラムのテストと実装を行いなさい
    def hello()
        puts "Hello"
    end
end
