// splicing lists
#include <iostream>
#include <list>

int main ()
{
  std::list<int> mylist1, mylist2;
  std::list<int>::iterator it;

  // set some initial values:
  for (int i=1; i<=4; ++i)
     mylist1.push_back(i);      // mylist1: 1 2 3 4

  for (int i=1; i<=3; ++i)
     mylist2.push_back(i*10);   // mylist2: 10 20 30

  it = mylist1.begin();
  ++it;                         // points to 2 in mylist1 (the 2th element)

  mylist2.splice (mylist2.begin(), mylist1, it);
                                // mylist1: 1 3 4
                                // mylist2: 2 10 20 30
                                // "it" is now VALID in mylist2, points to 2 (the 1st element).

  it++;                         // "it" points to 10 in mylist2 (the 2rd element).
  it++;                         // "it" points to 20 in mylist2 (the 3th element).
  return 0;
}