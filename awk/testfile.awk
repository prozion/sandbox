#{ print $1 " has a home directory at " $6 }

{
  OFS = " \"-=0=-\" "
  text = " has a home directory at "
  print $1,text,$6
}
