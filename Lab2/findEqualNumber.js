function findequalnumbers(number) {
    number = number.toString();
    var resultado =db.phones.find({},{"display": 1, _id: 0}).toArray();
    if(resultado.length > 0) {
        var count = 0;
        for(var i = 0; i < resultado.length; i++) {
            if(resultado[i].display.toString().indexOf(number.toString()) > -1) {
                printjson(resultado[i].display);
                count++;
            }
        }
        print("Number of times the number pattern " + number + " appears: " + count);
    }
}