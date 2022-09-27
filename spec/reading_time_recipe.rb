{{PROBLEM}} Method Design Recipe
1. Describe the Problem
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

# `reading_time` calculates reading time of string at 200 words per minute
time = reading_time(reading_text)

reading_text: a string (e.g. "These are examples of the method being called with particular arguments, and what the method should return in each situation.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.")
time: a string (e.g. ["5 seconds"])

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

reading_time("") => ["0 seconds"]
readinf_time("These are examples of the method being called with particular arguments, and what the method should return in each situation.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.") => ["19 seconds"]
reading_time(nil) throws an error

Encode each example as a test. You can add to the above list as you go.
