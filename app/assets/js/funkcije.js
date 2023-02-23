console.log("funkcije.js loaded");

function stanjeSprememba(stanje) {
    //create a new array with "Vse" "Novo" "Rabljeno" "Testno"
    var stanja = ["Vse", "Novo", "Rabljeno", "Testno"];

    var stanje = stanje;
    const a = document.getElementById("stanje-" + stanje);
    const b = a.innerHTML;

    //get index of b in stanja array
    var index = stanja.indexOf(b);

    //remove variable b from stanje array
    stanja.splice(stanja.indexOf(b), 1);

    //remove class "active" from all elements in stanja array
    for (var i = 0; i < stanja.length; i++) {
        document.getElementById("stanje-" + stanja[i]).classList.remove("active");
    }

    a.classList.add("active");


    //get element with "stanje_id" id
    var stanje_input = document.getElementById("stanje_id");

    //set value of stanje_input to stanje
    stanje_input.value = stanje;
}

function filterResult(stanje, make, model, type, location, gorivo, menjalnik, trgovec, letnik, cena, km) {
    var filter = document.getElementById("sorting1").value;

    var div1 = document.getElementById("izpisAvtomobilov_list1");
    var div2 = document.getElementById("izpisAvtomobilov_list2");

    $.ajax({    //create an ajax request to load properties.
        type: "POST",
        url: "includes/filterResult.inc.php",
        data: {filter: filter, stanje: stanje, make: make, model: model, type: type, location: location, gorivo: gorivo, menjalnik: menjalnik, trgovec: trgovec, letnik: letnik, cena: cena, km: km},
        dataType: "html",   //expect json to be returned
        cache: false,
        success: function(response){
            div1.innerText = response;
            div2.innerHTML = div1.innerText;
        }
    });
}

function addFilter(value, type1) {
    //get element with filter_list id
    var filter_list = document.getElementById("filter_list");

    //save current year in variable
    var date = new Date();
    var year = date.getFullYear();

    if (value === "" || value === "Od - "+year || value === " - "+year || value === "1900 - "+year) {
        return 2;
    }
    filter_list.innerHTML += '<li class="nav-item mb-2 me-2 filter_type_'+ type1 +'">\n' +
        '                       <button class="nav-link px-3" type="button">'+ value +'</button>\n' +
        '                     </li>';
    //get element with filter-btn id
    var filter_btn = document.getElementById("filter-btn");
    filter_btn.innerHTML = "Išči   <i class=\"fi-arrow-down\"></i>";
    return 1;
}
function removeFilter(value, id, multi) {
    var filter_list = document.getElementById("filter_list");
    var filter_list_children = filter_list.children;

    var li = document.getElementsByClassName(id);
    let li_length = li.length;

    let dva = 0;
    let dva2 = 0;
    let z = 0;
    let y = 0;
    let x = filter_list_children.length;

    for (let t = 0; t < li_length; t++) {
        if (li[t].children[0].innerText === value) {
            dva++;
            if (dva === 2) {
                li[t].remove();
                li[y].remove();
                return 1;
            }
            y = t;
        }
    }


    for (let i = 0; i < x; i++) {

        if (multi === 1) {
            i = filter_list_children.length;
            break;
        }
        else if (multi === 2) {
            if (filter_list_children[i].classList.contains(id)) {
                filter_list_children[i].remove();
            }
        }
        else {
            //check if filter_list_children[0] has id "id"
            if (filter_list_children[i].classList.contains(id)) {
                dva2++;
                if(dva2 === 2) {
                    //remove filter_list_children[0]
                    filter_list_children[z].remove();
                }
                z = i;
            }
        }


    }
    return 1;
}



function filter_karoserija(karoserija, vrsta) {

    if (addFilter(karoserija, vrsta) === 1) {
        if (removeFilter(karoserija, "filter_type_"+vrsta, 1) === 1) {
        }
    }
}

function filter_location() {
    //get value of input with id "filter_location"
    var location = document.getElementById("filter_location").value;

    if (addFilter(location, "kraj") === 1) {
        removeFilter(location, "filter_type_kraj", 0);
    }
    else if (addFilter(location, "kraj") === 2) {
        removeFilter(location, "filter_type_kraj", 2);
    }
}

function filter_let() {
    var let_od = document.getElementById("let-od").value;
    var let_do = document.getElementById("let-do").value;
    //if let_od > let_do flip values
    if (let_od > let_do) {
        let temp = let_od;
        let_od = let_do;
        let_do = temp;
    }
    if(let_od === "") {
        let_od = 1900;
    }

    var value = let_od + " - " + let_do;
    var type1 = "letnik";
    if (addFilter(value, type1) === 1) {
        removeFilter(value, "filter_type_" + type1, 0);
    }
    else if (addFilter(value, type1) === 2) {
        removeFilter(value, "filter_type_" + type1, 2);
    }
}

function znamka_model(vrsta) {
    var znamka = document.getElementById("sc-make").value;
    var model = document.getElementById("sc-model").value;

    if (vrsta === "znamka") {
        setTimeout(function () {
            document.getElementById("sc-model").innerHTML += '<option value="">Kateri koli model</option>';
        }, 100);
    }

    setTimeout(function () {
        var znamka = document.getElementById("sc-make").value;
        var model = document.getElementById("sc-model").value;


        if (model === "") {
            var value = znamka;
        }
        else {
            var value = znamka + " - " + model;
        }

        if (znamka == "") {
            value = "";
        }

        if (addFilter(value, "znamka") == 1) {
            removeFilter(value, "filter_type_znamka", 0);
        }
        else if (addFilter(value, "znamka") == 2) {
            removeFilter(value, "filter_type_znamka", 2);
        }
    }, 100);
}

function filter_cena() {
    var min = document.getElementById("cena-min").value;
    var max = document.getElementById("cena-max").value;

    var value = min + " - " + max + " €";

    var katerakoli = document.getElementById("negotiated-price").checked;
    if (katerakoli === true) {
        var value = "";
        var slider = document.getElementById("cena-slider");
        slider.style.opacity = "0.2";
        slider.style.pointerEvents = "none";
    }
    else {
        var slider = document.getElementById("cena-slider");
        slider.style.opacity = "1";
        slider.style.pointerEvents = "auto";
    }

    if (addFilter(value, "cena") == 1) {
        removeFilter(value, "filter_type_cena", 0);
    }
    else if (addFilter(value, "cena") == 2) {
        removeFilter(value, "filter_type_cena", 2);
    }
}

function filter_km() {
    var min = document.getElementById("km-min").value;
    var max = document.getElementById("km-max").value;

    var value = min + " - " + max + " km";
    var nivazno = document.getElementById("km-nivazno").checked;
    if (nivazno === true) {
        var value = "";
        var slider = document.getElementById("km-slider");
        slider.style.opacity = "0.2";
        slider.style.pointerEvents = "none";
    }
    else {
        var slider = document.getElementById("km-slider");
        slider.style.opacity = "1";
        slider.style.pointerEvents = "auto";
    }

    if (addFilter(value, "km") == 1) {
        removeFilter(value, "filter_type_km", 0);
    }
    else if (addFilter(value, "km") == 2) {
        removeFilter(value, "filter_type_km", 2);
    }
}

function getSelectedFilterData() {
    var url = "car-finder-catalog-list.php?";

    //get child elements of filter_list
    var filter_list_children = document.getElementById("filter_list").children;

    //get number of child elements
    var x = filter_list_children.length;

    //for every child element get its id
    for (let i = 0; i < x; i++) {
        //for every child element get its last class
        var y = filter_list_children[i].classList.length - 1;
        var id = filter_list_children[i].classList[y];
        //remove filter_type_ from id
        id = id.replace("filter_type_", "");

        //get value of child element
        var value = filter_list_children[i].innerText;

        switch (id) {
            case "karoserija":
                var id = "karoserija[]";
                break;
            case "menjalnik":
                var id = "menjalnik[]";
                break;
            case "gorivo":
                var id = "gorivo2[]";
                break;
            case "trgovec":
                var id = "trgovec[]";
                break;
            case "znamka":
                var id = "make";
        }

        //check if value is separated by " - "
        if (value.includes(" - ")) {
            //split value by " - "
            var value = value.split(" - ");
            //get first value
            var value1 = value[0];
            //add min to id
            var id1 = id + "-min";
            //get second value
            var value2 = value[1];
            //add max to id
            var id2 = id + "-max";
            //remove " €" from second value
            if (value2.includes(" €")) {
                value2 = value2.replace(" €", "");
            }
            //remove " km" from second value
            if (value2.includes(" km")) {
                value2 = value2.replace(" km", "");
            }
            //add value1 and value2 to url
            url += id1 + "=" + value1 + "&" + id2 + "=" + value2 + "&";
            continue;
        }

        var string = id + "=" + value + "&";
        url += string;
        console.log(url);
    }

    //add "isci-btn=" to url
    url += "isci-btn=";
    //load url and refresh page
    window.location.href = url;

}

function hiddenTOfile() {
    //get input child of element with id hidden-galerija1
    var input = document.getElementsByClassName("filepond--browser")[0];
    //Če je input prazen, torej je bil stisnjen gumb za odstranitev slike se funkcija konca
    if (input.value == 0) {
        return;
    }

    const inputClone = input.cloneNode(true);
    inputClone.setAttribute("name", "profile_img");
    inputClone.setAttribute("id", "clone_input");


    var galerija2 = document.getElementById("galerija2");
    galerija2.appendChild(inputClone);
    console.log("cloneNode uspesno");

}

function CarConformationDelete(id) {
    Swal.fire({
        title: 'Ali ste prepričani?',
        text: "Tega ne boste mogli razveljaviti!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Da, izbriši!'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire(
                'Izbrisano!',
                'Vaš oglas je bil izbrisan.',
                'success'
            )
            $.ajax({    //create an ajax request to load properties.
                type: "POST",
                url: "includes/deleteOglas.inc.php",
                data: {id_oglasa: id, btn_delete_submit: 'btn'},
                dataType: "html",   //expect json to be returned
                cache: false,
                success: function(response){
                    console.log(response);
                    //timeout za 2s
                    setTimeout(function(){
                        location.reload();
                    }, 2000);
                }
            });
        }
    })
}
