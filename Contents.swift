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


//辞書：キーと値のペアを持つ複数の値を収納できるデータ構造
//var 変数名 = [
//    キー：値
//    キー：値
//    キー：値
//]

var occupations = [
    "ひろし": "詩人",
    "たつひろ":"経営者",
    "よしのぶ":"数学者",
    "まさお":"天才"
]

print(occupations["まさお"]!)

//辞書に要素をつけたい場合
//辞書の名前[付け加えたいキー]　= 付け加えたい値

occupations["のぶさだ"] = "哲学者"

print(occupations)

//空の辞書
//var 変数名 = [キーの型:値の型]()

var emptyDictionary = [String:Int]()

print(emptyDictionary)


//for-inとは、繰り返し処理を行う文法
//シーケンスとは、複数の値で一つづつ段階的に処理できる値のこと。EX：配列や数値範囲
//for 変数 in シーケンス（）{
//    繰り返したい処理
//}

//配列
var names = ["太郎","二郎","三郎","四郎"]

for name in names{
    print(name)
}


//範囲演算子...
//閉区間（両端を含む区間のこと）
for i in 1...10{
    print(i)
}

//半開区間
//0..<10 = 0...9
for i in 1..<10{
    print(i)
}

//関数：処理をまとめたもの
//func 関数名（引数：引数の型）-> 戻り値の型{
//    return 戻り値
//}
//関数（引数）


func Hello(name:String) -> String{
    return "こんにちは、\(name)さん!"
}

print(Hello(name:"もぎ"))

//複数の引数、戻り値ありの関数
//func 関数名（引数1:引数１の型,引数2:引数2の型,引数3:引数3の型）->戻り値の型{
//    return 戻り値
//}
//関数（引数）

func Hello(name1:String,name2:String,name3:String) -> String{
    return "こんにちは、\(name1)さん,\(name2)さん,\(name3)さん"
}
print(Hello(name1:"田中",name2:"山本",name3:"森安"))

//引数も戻り値もない関数
//func 関数名(){
//    処理
//}

func HelloWorld(){
    print("Hello,World!")
}
HelloWorld()


//クロージャとは、簡略した名前のない関数。
//わざわざ関数を定義するまでもないときに使う

//{(引数:引数の型)->戻り値の型 in 戻り値}
//print(クロージャが格納された定数（引数）)


//let Hello = {(name:String)->String in
//    return "こんにちは！\(name)さん"
//}
//print(Hello("山田"))

//引数を省略する場合
//let Hello = {()->String in
//    return "こんにちは！田中さん"
//}
//print(Hello())


//戻り値を省略
let Hello = {print("こんにちは！田中さん")}
Hello()

//クラス：設計図のようなもの。クラスを使ってインスタンスを作ることで使える。
//インスタンスはクラスをもとにして作った実体
//プロパティ：クラスないの変数や定数
//メゾット：クラスないの関数
//class クラス名{
//    プロパティ１
//    メゾット１...
//}
//インスタンス
//var　変数名　= クラス名（）
//インスタンス.プロパティ１
//インスタンス.メゾット１

//class Animal{
//    var age = 2
//    let kind = "犬"
//
//    func Bite(){
//        print("\(age)歳の\(kind)が噛み付く")
//    }
//}
//
//var dog = Animal()
//
//print(dog.age)
//print(dog.kind)
//
//dog.Bite()

//イニシャライザ：インスタンスを作るときにプロパティに初期値を与えるもの
//インスタンスに応じて値を変えるには、イニシャライザをつかう
//init(プロパティ１：型, プロパティ２：型){
//    self.プロパティ１ = プロパティ１
//    self.プロパティ2 = プロパティ2
//}

class Animal{
    var age:Int
    let kind:String
    
    func Bite(){
        print("\(age)歳の\(kind)が噛み付く")
    }
    
    init(age:Int, kind:String){
        self.age = age
        self.kind = kind
    }
}

var cat = Animal(age:3, kind: "猫")

cat.Bite()


//構造体：値をまとめて置くもの
//struct 構造体名 {
//    プロパティ１
//    メゾット１...
//}
//
//var インスタンス名　＝　構造体名（）
//
//インスタンス.プロパティ
//インスタンス.メゾット


//struct Animal2{
//    let age = 5
//    var kind = "犬"
//
//    func Bite(){
//        print("\(age)歳の\(kind)が噛み付く")
//    }
//}
//
//var dog = Animal2()
//dog.Bite()

//イニシャライザも一緒
//init(プロパティ１：型, プロパティ２：型){
//    self.プロパティ１ = プロパティ１
//    self.プロパティ2 = プロパティ2
//}


struct Animal2{
    let age:Int
    var kind:String
    
    func Bite(){
        print("\(age)歳の\(kind)が噛み付く")
    }
    
    init(age:Int, kind:String){
        self.age = age
        self.kind = kind
    }
}

var panda = Animal2(age:10, kind:"パンダ")
panda.Bite()

//構造体配列
//var 配列名:[構造体] = [
//    構造体（）,
//    構造体()
//]

var animals:[Animal]=[
    Animal(age:10,kind:"トラ"),
    Animal(age:20,kind:"人間"),
    Animal(age:5,kind:"ヘビ")
]

animals[2].Bite()

//プロトコル：構造体やクラスの実装を保証するもの
//プロトコルで定義したプロパティやメゾットは必ず実装しないといけない
//protocol プロトコル名{
//    var プロパティ名:型 { get } getでプロパティを定数にできる。get setでプロパティを変数にしかできない
//    func メゾット名（）
//}

//struct 構造体名：　プロトコル名{
//    var プロトコルで定義したプロパティ：型
//    func プロトコルで定義したメゾット(){
//        処理内容
//    }
//}

protocol Animal3 {
    var age: Int{ get }
    func bark()
}

struct Dog: Animal3 {
    let age:Int
    func bark(){
        print("犬が吠える")
    }
}

//do-catch:エラー処理をする時の構文

//do{
//    try エラーが出るかもしれない関数
//}catch{
//    エラーが出た時の処理
//}

import UIKit

var canConnectServer = false

func connectServer() throws{
    if canConnectServer{
        print("サーバーと接続")
    }
    else{
        throw NSError()
    }
}

func getData(){
    do{
        try connectServer()
        print("データを取り出す")
    } catch {
       print("エラーの時の処理")
   }
}

getData()


//継承：クラスとプロパティやメゾットを引き継いで新しいクラスを作ること
//継承元：superclass, 継承先:subclass
//class クラス名：　継承元クラス{
//
//}

class Monster{
    var kind = "モンスター"
    
    func bodyBrow(){
        print("たいあたり")
    }
}

class Dragon: Monster{
    func fireBreath(){
        print("火を吹く")
    }
}

class Slime: Monster{
    func recovery(){
        print("回復する")
    }
}

var dragon = Dragon()
print(dragon.kind)
dragon.bodyBrow()
dragon.fireBreath()

var slime = Slime()
print(slime.kind)
slime.bodyBrow()
slime.recovery()

//as:型キャストをするためのもの
//型キャストとは：インスタンスの型を他の型として扱うこと
//ダウンキャストの場合はas! or as?を使います。
//変数 as 継承元の型

var any:Any = 1024
var str:String = "String"
var int: Int = 128

//アップキャスト str→any int→any
//var anyStr = str as Any
//anyStr = any
//print(anyStr)

//as!:強制的にダウンキャストする
//print(any as! Int)
//print(any as! String)


//as?：ダウンキャストが成功する場合はオプショナル型が、失敗するときはnil型が出る
print(any as? Int)
print(any as? String)
