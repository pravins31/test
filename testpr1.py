#!/bin/python3
counter = 1
testv1 = True
while (counter <= 5):
  user1=input("enter your name")
  for i in user1:
    if((ord(i) <= 90 and ord(i) >= 65) or (ord(i) <= 122 and ord(i) >= 97) or (i == " ")):
      testv1 = True
    else:
      testv1 = False
      break
  if (testv1 == True):
    print("your name is:",user1)
    break;
  else:
    if(counter == 5):
      print("no of attempts exceede")
    counter += 1

