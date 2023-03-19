import UIKit

//1️⃣ Variable & Constant
//**Latihan 1:**
//Ada persamaan Matematika seperti ini:
//`x = y + 10`
//
//Jika `x` ingin bernilai `40`, bagaimana caranya apabila dibuat dalam Swift code?
//
//💡 tentukan yang mana yang jadi variable, yang mana yang jadi constant dan ketika `print(x)` hasilnya 40

var y = 30
var x = y + 10
print(x)

//**Latihan 2:**
//
//**String Concatenation**
//
//Variabel `content` menampung dua value dari variable `greeting` dan variable `place`
//
//Dimana output dari variable content ketika di print adalah:
//
//`Selamat datang di Kopi Surgawi`
//
//Pertanyaan:
//
//1. Bagaimana output diatas apabila ditulis dalam Swift Code?
//2. Tuliskan dalam Swift code, total jumlah karakter yang ada di variable `count`
//3. Buat output dari variable `content` menjadi huruf kapital semuanya
//4. Buat ouput dari variable `content` menjadi huruf kecil semuanya

var greeting = "Selamat datang di"
var place = "Kopi Surgawi"
var content = greeting + place
var count = content.count
print(content.uppercased())
print(content.lowercased())
print(count)

//**Latihan 3:**
//
//**String Interpolation**
//
//Seorang Barista memberikan struk pembayaran kepada pelanggan. Isi dari struk tersebut sebagai berikut:
//
//`Total price you should pay is IDR 500000`
//
//**Diketahui**:
//
//- `coffeePrice` adalah harga satuan dari kopi
//- `amountOfCoffee` adalah jumlah stok kopi
//- `totalPrice` adalah harga satuan kopi dikalikan dengan jumlah stok kopi
//- `billMessage` adalah struk pembayaran yang isinya: `Total price you should pay is IDR 500000`
//
//**Ditanyakan**:
//
//Bagaimana syntax Swift nya?
let coffePrice = 50000
var amountOfCoffee = 10
var totalPrice = coffePrice * amountOfCoffee
var billMessage = "Total price you should pay is IDR \(totalPrice)"

print(billMessage)

//2️⃣ IF Statements
//**Latihan 1:**
//
//Sebagai Barista shift pagi, Rana harus bangun sebelum jam 6 pagi karena Kopi Surgawi akan dibuka pada jam 7 pagi.
//
//Jika Rana bangun lewat dari jam 6 pagi, akan muncul pesan `You will be late, Rana!`
//
//Jika Rana bangun sebelum jam 6 pagi, akan muncul pesan `Way to go! Keep Spirit`
//
//Bagaimana Swift syntax nya?
let wakeUpTime = 5 // waktu Rana bangun
let openingTime = 7 // waktu Kopi Surgawi dibuka

if wakeUpTime >= openingTime - 1 {
    print("You will be late, Rana!")
} else {
    print("Way to go! Keep Spirit")
}

//**Latihan 2:**
//
//Sesampainya di Kopi Surgawi, pesanan pertama datang dari pelanggan pecinta kopi.
//
//Rana menyiapkan resep kopi andalannya. Catatan resepnya seperti ini:

//**Diketahui:**
//
//- Blooming interval maksimal adalah 225 mili liter. Lewat dari 225 ml, kopi akan terasa pahit dan kecut
//- Pouring (seduhan) pertama dimulai di 30 ml. Di catatannya tertulis `First interval and start pouring`
//- Jika pouringnya diantara 30 ml hingga 90 ml, di catatannya tertulis `Second interval, after then wait until thirty second`
//- Jika pouringnya diantara 90 ml hingga maksimal 180 ml, di catatannya tertulis `Third interval, after then wait until twenty five second`
//- Jika pouringnya antara 180 ml hingga kurang dari 225 ml, di catatannya tertulis `Resting interval and your coffee are ready to serve`
//- Jika pouringnya melebihi 225 ml, maka citarasa kopi akan `Over resting`
//
//**Ditanyakan**:
//
//- Bagaimana Swift syntax nya apabila menggunakan `switch case`?

let pouringAmount = 120 // Jumlah pouring

switch pouringAmount {
case 30..<90:
    print("Second interval, after then wait until thirty second")
case 90..<180:
    print("Third interval, after then wait until twenty five second")
case 180..<225:
    print("Resting interval and your coffee are ready to serve")
case 225...:
    print("Over resting")
default:
    print("First interval and start pouring")
}

//# 3️⃣ For-in Loops
//
//**Latihan 1**
//
//**Diketahui:**
//
//Pagi ini di Kopi Surgawi, sudah datang 5 pelanggan yang datang bergantian. Mereka bernama:
//
//- Anna
//- Hendry
//- Disa
//- Wendy
//- Ryan
//
//Sebagai Barista yang ramah, sudah menjadi kewajiban Rana untuk menyapa nama mereka ketika memesan kopi
//
let customers = ["Anna", "Hendry", "Disa", "Wendy", "Ryan"]

for customer in customers {
    print("Selamat datang di Kopi Surgawi, \(customer)!")
}

//**Latihan 2**:
//
//Masing-masing pengunjung memesan menu kopi yang berbeda-beda
//
//**Diketahui:**
//
//- Menu kopi pesanan **Anna** adalah **Vanilla Latte**
//- Menu kopi pesanan **Hendry** adalah **Cold White**
//- Menu kopi pesanan **Disa** adalah **Ice Americano**
//- Menu kopi pesanan **Wendy** adalah **Ice Japanese**
//- Menu kopi pesanan **Ryan** adalah **Ice Coffee Surgawi**
//
//**Ditanyakan:**
//
//- Buat dalam Swift syntax untuk memunculkan output sebagai berikut:

let customersKopi = ["Ryan": "Ice Coffee Surgawi", "Wendy": "Ice Japanese", "Disa": "Ice Americano", "Hendry": "Cold White", "Anna": "Vanilla Latte"]

for (customer, order) in customersKopi {
    print("Pesanan \(order) atas nama kak \(customer) sudah ready!")
}


