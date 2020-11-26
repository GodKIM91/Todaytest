def fact(n)
    if n==1
        1
    else
    n*fact(n-1)
    end
end

puts "Factorial of 5 is #{fact(5)}"

