let burger_button = document.getElementById("burger-menu-btn");
burger_button.onclick = () => {
    let phone_menu = document.getElementById("phone-menu");
    if (phone_menu.classList.contains("open")) {
        phone_menu.classList.replace("open", "closed");
    } else {
        phone_menu.classList.replace("closed", "open");
    }
};