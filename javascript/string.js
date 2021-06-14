function timeConversion(s) {
  // Write your code here
  let result = "";
  if (s.includes("A")) {
    if (s.indexOf("12") === 0) {
      result = s.replace("12", "00");
    } else {
      result = s;
    }
  } else if (s.includes("P")) {
    if (s.indexOf("12") === 0) {
      result = s;
    } else {
      let modifiedHour = (parseInt(s.substring(0, 2)) + 12).toString();
      result = s.replace(s.substring(0, 2), modifiedHour);
    }
  }
  return result.substring(0, 8);
}

console.log(timeConversion("12:45:54PM"));
