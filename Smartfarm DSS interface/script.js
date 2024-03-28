function myFunction() {
  var input, filter, ul, li, a, i, txtValue;
  input = document.getElementById('myInput');
  filter = input.value.toUpperCase();
  ul = document.getElementById("myUL");
  li = ul.getElementsByTagName('li');

  for (i = 0; i < li.length; i++) {
    a = li[i].getElementsByTagName("a")[0];
    txtValue = a.textContent || a.innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}

function togglePasswordVisibility() {
  var x = document.getElementById("myPassword");
  var y = document.getElementById("eyeOpenIcon");
  var z = document.getElementById("eyeClosedIcon");
  if (x.type === "password") {
      x.type = "text";
      y.style.display = "none";
      z.style.display = "block";
  } else {
      x.type = "password";
      y.style.display = "block";
      z.style.display = "none";
  }
}