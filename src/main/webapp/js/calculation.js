function calculatePrice() {
    //Get selected data
    var vcoffee = document.getElementById("coffeeItem").value;
    document.getElementById("printCoffee").innerHTML = vcoffee;

    var qty = document.getElementById("qtyItem").value;
    document.getElementById("printQty").innerHTML = qty + " kg";

    if (vcoffee == "Gayo") {
        price = 45000;
    } else if (vcoffee == "Luwak") {
        price = 50000;
    } else if (vcoffee == "Toraja") {
        price = 40000;
    } else if (vcoffee == "Java") {
        price = 34000;
    } else if (vcoffee == "Kintamani") {
        price = 37000;
    } else if (vcoffee == "Flores") {
        price = 47000;
    } else if (vcoffee == "Lanang") {
        price = 45000;
    } else if (vcoffee == "Wamena") {
        price = 40000;
    } else if (vcoffee == "Sidikalang") {
        price = 35000;
    }
    document.getElementById("printPrice").innerHTML = "IDR " + price + ",00";

    //calculate total value  
    var total = qty * price
    document.getElementById("printTotal").innerHTML = "IDR " + total + ",00";

}