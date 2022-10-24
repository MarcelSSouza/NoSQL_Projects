function groupByPrefix(nation) {
    var resultado =db.phones.aggregate([
        {$match: {"components.country": nation}},
        {$group: {_id:"$components.prefix", count: {$sum: 1}}},
        {$sort: {count: -1}}
    ]);
    //print the result
    printjson(resultado._batch);
}