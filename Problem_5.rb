def gcd(n1,n2)

  return n1 if n1 == n2
  #  GCD
  while ( n2 != 0 )
    r  = n1 % n2
    n1 = n2
    n2 = r
  end

  return n1
end

def lcm(n1,n2)
  # LCM
  return n1 * n2 / gcd(n1, n2)

end

def small_multiple
  x = 1
  # find the smallest multiple using LCM METHOD
  2.upto(20) { |i| x = lcm(i, x) }
  x
end

print small_multiple
