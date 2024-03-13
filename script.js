$(document).ready(function () {
    var categoryItemsDiv = document.getElementById("categoryItems");
    var oldAltText;

    function changeCategoryInfo() {
        var altText = $(this).attr("id");
        var title = $(this).attr("name");
        var url = altText;
        if (oldAltText == undefined) {
            getMenuDetails(url);
            changeCategoryTitle(title);
            $(".categoryTitle").show();
            $("#productTable").show();
            oldAltText = altText;
        } else if (oldAltText == altText) {
            $("#productTable").hide();
            $(".categoryTitle").hide();
            $("#productTable").empty();
            oldAltText = undefined;
        } else {
            $("#productTable").hide();
            $(".categoryTitle").hide();
            $("#productTable").empty();
            changeCategoryTitle(title);
            getMenuDetails(url);
            $(".categoryTitle").show();
            $("#productTable").show();
            oldAltText = altText;
        }
    }

    function getCategories() {
        fetch("http://localhost:3000/categories")
            .then((response) => response.json())
            .then((data) => {
                data.forEach(function (item) {
                    var categoryItemDiv = document.createElement("div");
                    categoryItemDiv.className = "categoryItem";
                    var button = document.createElement("button");
                    button.className = "changeUrl";
                    button.id = item.button_id;
                    button.name = item.button_name;
                    button.onclick = changeCategoryInfo;
                    var img = document.createElement("img");
                    img.className = "categoryImages";
                    img.src = item.img_src;
                    img.alt = item.img_alt;
                    var p = document.createElement("p");
                    p.textContent = item.p_text;
                    p.className= "josefin-sans-1"
                    button.appendChild(img);
                    button.appendChild(p);
                    categoryItemDiv.appendChild(button);
                    categoryItemsDiv.appendChild(categoryItemDiv);
                });
            })
            .catch((error) => console.error("Error:", error));
    }

    function getMenuDetails(url) {
        fetch("http://localhost:3000/" + url)
            .then((response) => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.json();
            })
            .then((data) => {
                data.forEach((item) => {
                    $("#productTable").append(
                        "<div class='productRow'>"+
                        "<div class='productImage'><img src="+item.image+" class='innerImage'></div>" +
                        "<div class='productInfo'>"+
                        "<div class='productName'>"+item.item+"</div>" +
                        "<div class='productPrice'>"+item.price+"₺"+"</div>"+
                        "<div class='productDesc'>"+item.description+"</div>" +
                        "</div>"+
                        "</div>"
                    );
                });
            })
            .catch((error) => {
                alert("An error occurred while loading data: " + error.message);
            });
    }

    function changeCategoryTitle(title) {
        document.getElementById("categoryTitle").innerText = title;
    }

    getCategories()
});
