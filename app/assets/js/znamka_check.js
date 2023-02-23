console.log("tu sem");

function nekiNEki() {
    var znamka = document.getElementById("sc-make").value;

    $.ajax({    //create an ajax request to load properties.
        type: "POST",
        url: "includes/SelectModel.inc.php",
        data: {znamka_name: znamka},
        dataType: "html",   //expect json to be returned
        cache: false,
        success: function(response){
            var model = document.getElementById("sc-model");
            model.innerHTML = response;
        }
    });
}

function postnaStForKraj() {
    var kraj = document.getElementById("sc-city").value;

    $.ajax({    //create an ajax request to load properties.
        type: "POST",
        url: "includes/SelectKraj.inc.php",
        data: {kraj_name: kraj},
        dataType: "html",   //expect json to be returned
        cache: false,
        success: function(response){
            var postna_st = document.getElementById("sc-zip");
            postna_st.innerHTML = response;
        }
    });
}

//add keyup event listener to element with sc-description id
document.getElementById("sc-description").addEventListener("keyup", function() {

    //get innerHTML of element with sc-description-char-count id
    let charCount_1 = document.getElementById("sc-description-char-count").innerHTML;
    //get number of characters for sc-description
    let charCount_2 = document.getElementById("sc-description").value.length;
    let left = document.getElementById("sc-description-char-left").innerHTML;

    //check if charCount_2 is greater than charCount_1
    let razlika = charCount_2 - charCount_1;
    if (charCount_2 < charCount_1) {
        left = left - razlika;
    }
    else if (charCount_2 === charCount_1) {
    }
    else {
        left = left - razlika;
    }

    //change innerHTML of element with sc-description-char-count id
    document.getElementById("sc-description-char-count").innerHTML = charCount_2;
    //change innerHTML of element with sc-description-char-left id
    document.getElementById("sc-description-char-left").innerHTML = left;

});

//add event listener for onchange for ap-address id
document.getElementById("ap-address").addEventListener("change", function() {

        //get value of ap-address
        let address = document.getElementById("ap-address").value;

        //get value of ap-zip
        let zip = document.getElementById("sc-zip").value;

        //get value of ap-city
        let city = document.getElementById("sc-city").value;

        //get value of ap-country
        let country = document.getElementById("sc-country").value;


    var url = "https://api.geoapify.com/v1/geocode/search?text="+address+", "+city+" "+zip+", "+country+"&apiKey=50213a01018a463a9ddcdb868a74fbc7";

    async function foo() {
        let obj;
        var lati;
        var longi;

        const res = await fetch(url, requestOptions);

        obj = await res.json();
        lati = obj.features[0].properties.lat;
        longi = obj.features[0].properties.lon;

        var marker;
        marker = L.marker([lati, longi]).addTo(map);
    }
    foo();
});


//leafletjs map
var map = L.map('map').setView([46.0866, 14.5583], 9);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '© OpenStreetMap'
}).addTo(map);

var requestOptions = {
    method: 'GET',
};





//check for changes for element with id hidden-galerija1
document.getElementById("hidden-galerija1").addEventListener("change", function() {
    galerijaChange();
});


function galerijaChange() {
    //---get element with id hidden-input-galerija
    //var galerija = document.getElementById("hidden-input-galerija");
    //---if element exists remove it
    //if (galerija) {
    //    galerija.remove();
    //}


    //get element with id hidden-galerija2
    const galerija2 = document.getElementById("hidden-galerija2");


    //get input child of element with id hidden-galerija1
    var input = document.getElementById("hidden-galerija1").getElementsByTagName("input")[0];
    //Če je input prazen, torej je bil stisnjen gumb za odstranitev slike se funkcija konca
    if (input.value == 0) {
        return;
    }
    const inputClone = input.cloneNode(true);
    inputClone.setAttribute("name", "galerija[]");
    inputClone.setAttribute("id", "hidden-input-galerija");
    galerija2.appendChild(inputClone);
    console.log("cloneNode uspesno");

    setTimeout(function() {
        var elements = document.getElementsByClassName("filepond--action-remove-item");
        for (let i=0; i<elements.length; i++) {
            elements[i].style.display = "none";
        }
    }, 4000);
}

//add click event listener for trash-div
document.getElementById("trash-div").addEventListener("click", function() {

    const galerija2 = document.getElementById("hidden-galerija2");
    galerija2.innerHTML = "";

    //get ul element with class filepond--list
    document.getElementsByClassName("filepond--list")[0].innerHTML = "";


    const galerija1 = document.getElementById("hidden-galerija1");
    galerija1.style.height = "160px";
    galerija1.style.transition = "height 0.5s";

});











