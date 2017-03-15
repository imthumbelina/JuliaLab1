function f(x,y)
  return x+y
end

function sieve(n)
  primes=fill(true,n)
  primes[1]=false
  for i in 2:n
    if primes[i]
      for j in i:div(n,i)
        primes[j*i]=false
      end
    end
  end

  return find(primes)

end

function bubble_sort!(array)
  for i in 2:length(array)-1
    for j in 2:length(array)-1
      if(array[j-1])>array[j]
        array[j],array[j-1]=array[j-1],array[j]
      end
    end
  end
end

array=[1,3,2,1,1]
bubble_sort!(array)
#print(f(2,3))
