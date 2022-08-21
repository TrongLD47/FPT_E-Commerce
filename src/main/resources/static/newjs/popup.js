function menuToggle() {
			const toggleMenu = document.querySelector(".menu");
			toggleMenu.classList.toggle("active");
		}
function openNav() {
	  document.getElementById("layout-menu").style.left = "0";
	  document.getElementById("content-wrapper").style.opacity = "0.5";
	}

	function closeNav() {
	  document.getElementById("layout-menu").style.left = "-100%";
	  document.getElementById("content-wrapper").style.opacity= "1";
	}