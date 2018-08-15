# Given a string, find out if its characters can be rearranged to form a palindrome.

# Example

# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.

# We can rearrange "aabb" to make "abba", which is a palindrome.

def palindromeRearranging(inputString)
    l = {}; c = []; x = 0
    inputString.split('').map { |i| l[i] = (l[i]) ? l[i] + 1 : 1 }
    l.each { |k, v| c.push(v) }; c.each { |v| x += 1 if v.odd?; return 0 if x > 1 }
end