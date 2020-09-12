function getLi(value){
    var text = `<a href=${value.asset_name}>${value.asset_name}</a>`
    return `<li>${text}</li>`
}


$.getJSON("info.json", res => {
    $("#main-page").append("<ul>")
    for(key in res){
        $("#main-page").append(getLi(res[key]))
    }
    $("#main-page").append("</ul>")
})
