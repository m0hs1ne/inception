const fetchAdvice = async () => {
  const response = await fetch("https://api.adviceslip.com/advice");
  const data = await response.json();
  console.log(data);
  document.getElementById("title").innerHTML = "Advice #" + data.slip.id;
  document.getElementById("advice").innerHTML = '"' + data.slip.advice + '"';
};

fetchAdvice();
