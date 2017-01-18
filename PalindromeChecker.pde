public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sub = new String();
  for (int i=0; i<word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i))==true)
    {
      sub=sub+word.charAt(i);
    }
  }
  if (sub.equalsIgnoreCase(reverse(sub)))
  return true;
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = 0; i<str.length();i++)
    {
      sNew=sNew+str.substring(str.length()-i-1, str.length()-i);
    }
    return sNew;
}


