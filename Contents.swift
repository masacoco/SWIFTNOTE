//hello world

import Darwin
print("Hello, World")

//変数、定数
//var 変数名　= 値
//格納された数の変更可能
var variable = 30
variable = 60

//let 定数名 = 値
let constant = 60

//型推論とは型を予測してくれる機能
//型とは値の種類を分類するラベル
//Int-整数、Strig-文字列
//型推論を使えば格納された値に応じて自動的に型をつける
var implicitInteger = 59
//type(of:型を知りたい値) = 型のタイプ
print(type(of:implicitInteger))

var implicitString = "りんご"
print(type(of: implicitString))

//明示的な型。型推論ではなく明示的に型をつけることができる
//WHEN?１、初期値を指定したく無い場合。２、その方がわかりやすいと感じる場合
//var 変数名:型
var explicitInteger:Int
//初期値
//var 変数名:型　= 値
var explicitString: String = "ぶどう"

//型変換は、変数や定数の型を別の方に変換すること
//変換したい型（変換される変数）
var label = "横幅:"
var width = 80
//× print(label + width) String ＋　Integer だから
print(label + String(width))


//文字列に変数を埋め込む
//\(埋め込みたい変数)
var apple = 10
print("わたしは\(apple)個りんごをもっています")

//Ifとは条件分岐をするための文法
//条件におうじて異なる行動をすること

//if 条件１{
//    条件１の処理
//}
//else if 条件２{
//    条件２の処理
//}
//else{
//    それ以外の処理
//}
            
var number = 30

if number == 10{
    print(10)
}
else if number == 30{
    print(30)
}
else{
    print("それ以外")
}

//Switchは条件分岐をするときに使う。Switchの方が、3つ以上条件があるときにコードが見やすくなる
//switch 条件式{
//case 値1:
//    値1の処理
//case 値2:
//    値2の処理
//case 値3:
//    値3の処理
//default:
//    それ以外の処理
//}

var number2 = 290

if number2 == 10{
    print(10)
}
else if number2 == 30 {
    print(30)
}
else{
    print("それ以外")
}

//switch文のほうが読みやすい
switch number2{
case 10:
    print(10)
case 30:
    print(30)
default:
    print("それ以外")
}

//guardとは条件に一致しなかったときに処理を中断する文法
//Ifを使っても似たようなものはできるが、guardのほうが可読性は上がる
//
//guard 条件 else {
//    条件に一致しなかった時の処理
//    return
//}
//条件に一致した時の処理

var age = 19

func Drink(){
    guard age >= 20 else{
        print("未成年")
        return
    }
    print("酒が飲める")
}

Drink()

//オプショナル型はnilが入れることができる型のこと（オプショナル型にすることをラップする）（オプショナル型から既存の型を取り出すことをアンラップするという）

//let 定数名: Optional<型> = 方に対応した値
//↓（シンタックスシュガー：簡単な書き方）
//let 定数名: 型?

//var optionalInt: Int? = 30
//print(optionalInt)



//optional(30)は普通の値として使えない、アンラップ必要

//強制的アンラップ：値にNilが入っていても関係なしにアンラップする
//オプショナル型の変数！
//強制アンラップ→通常optional(30)とでるが、３０になる

//var optionalInt: Int? = 30
//print(optionalInt!)




//オプショナルバインディング：ifやguardを使って、オプショナルの値がnilかどうかで処理を分ける方法。値がnilでもうまく処理できる

//ifを使ったオプショナルバインディング
//if let 定数名　＝　オプショナル型の変数{
//    nil では無い時の処理
//}
//else{
//    nilの時の処理
//}

//var optionalInt: Int? = 30
//if let unwrapedInt = optionalInt{
//    print(unwrapedInt)
//}
//else{
//    print("unwrapedIntはnil")
//}


//guardの場合guardの外でも定数が使える

//guard let 定数名 = オプショナル型の変数 else {
//    nilの時の処理
//    return
//}
//nilでは無い時の処理

var optionalInt: Int? = 20

func Unwrap(){
    guard let unwrapedInt = optionalInt else{
        print("unwrapedIntはnil")
        return
    }
    print(unwrapedInt)
}

Unwrap()

//配列：複数の値を格納できるデータ構造のこと
//var　変数名　＝　[要素1,要素2,要素3,要素4]

var sports = ["サッカー","テニス","バスケ"]

print(sports[1])

//配列に要素追加

//配列.append(追加する要素)
sports.append("卓球")
print(sports)


//空の配列
//var 変数名 = [配列の型]()

var emptyArray = [String]()
print(emptyArray)
