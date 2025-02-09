# Ruby Getter-Only Method Bug

This repository demonstrates a common error in Ruby where assigning a value to a method that only has a getter (accessor) will not change the object's internal state.  The code showcases the problem and provides a solution.

**Problem:**
In Ruby, if a class has only a getter method (no setter method), attempts to directly assign a new value to the getter will not update the object's internal state. This unexpected behavior can lead to subtle and hard-to-find bugs in your code.

**Solution:**
To modify the object's internal state, you must define a setter method (using the `=` operator or `attr_writer`) to explicitly update the instance variable.