# MY MERGE FUNCTION THAT WORKS INDIVIDUALLY BUT NOT WITH A FUNCTION
# def merge(a, b)
#   i=0
#   j=0
#   sorted_array = []
#   a_length = a.length
#   b_length = b.length
#   while(sorted_array.length <= (a.length + b.length))
#     if( (a[i] < b[j]) && !(a[i].nil?) && !(a[j].nil?) )
#       sorted_array.push(a[i])
#       i+=1
#     elsif( (a[i] > b[j]) && !(a[i].nil?) && !(a[j].nil?) )
#       sorted_array.push(b[j])
#       j+=1
#     elsif( (a[i] == b[j]) && !(a[i].nil?) && !(a[j].nil?) )
#       sorted_array.push(a[i])
#       sorted_array.push(b[j])
#       i+=1
#       j+=1
#     end
#     break if i==a.length
#     break if j==b.length
#   end
#   b[j..(b_length-1)].each do |element|
#     sorted_array.push(element)
#   end
#   return sorted_array
# end

# RADHIKA'S MERGE FUNCTION
def merge(array1,array2)
  index1=0
  index2=0
  x = array1.length + array2.length
  mergedArray = []
  while(mergedArray.length < x)
    if(array1[index1].nil?)
      mergedArray.push(array2[index2])
      index2 += 1
    elsif (array2[index2].nil?)
      mergedArray.push(array1[index1])
      index1 += 1
    elsif(array1[index1] < array2[index2])
      mergedArray.push(array1[index1])
      index1 += 1
    else
      mergedArray.push(array2[index2])
      index2 += 1
    end
  end
  return mergedArray
end

# MERGE FUNCTION WITH SLICE
# def merge(a,b)
#   sorted_array = []
#   req_length = a.length + b.length
#   while(sorted_array.length != req_length)

#     sorted_array.push(a.slice!(0)) if(!a.empty? && !b.empty? && a[0]<b[0])
#     sorted_array.push(b.slice!(0)) if(!a.empty? && !b.empty? && a[0]>b[0])
#     if(!a.empty? && !b.empty? && a[0]==b[0])
#       puts "SERIOUS SITUATION"
#       sorted_array.push(a[0])
#       sorted_array.push(b[0])
#       a.slice!(0)
#       b.slice!(0)
#     end
    
#     if(a.empty? && !b.empty?)
#       sorted_array.push(b.slice!(0))
#     end

#     if(b.empty? && !a.empty?)
#       sorted_array.push(a.slice!(0))
#     end
#   end
#   return sorted_array
# end

# # def merge_sort(array)
#   n = array.length
#   # return array if n <2
#     mid = (n.to_f/2).ceil
#     left = a[0..(mid-1)]
#     right = a[mid..(n-1)]
#     puts left
#   # end
# # puts merge(a,b)
# # merge_sort([5,4,3,2,1])

def mergesort(array)
  n = array.length
  if(n < 2)
    return array 
  else
    left = array[0..((n.to_f/2).ceil-1)]
    right = array[(n.to_f/2).ceil..(n-1)]
    return merge(mergesort(left), mergesort(right))
  end
end

puts mergesort([1,2,5,6,1])