def mergeSort(myArray)
  #@my_Array
  if myArray.length==1
    puts  array
else
  #create two new arrays which the original splits into
  leftSideArray=Array.new
  rightSideArray=Array.new
  #if the array is of length 1, then return the array itself

  mid=myArray.length/2
  #Now Iterate through the first half of the array to get the Left Side of the Array

  for i in 0..myArray[mid-1]  #From the beginning to the middle i.e. from index 0 to middle
    leftSideArray[i]=myArray[i]
  end
  #Now Iterate through the second half of the array to get the Right Side of the Array

  for i in mid..(myArray.length-1)  #(myArrayList.length/--from middle to the end
    rightSideArray[i]=myArray[i]
  end
  #once both array halves are created, run the merge sort algorithm
  return merge(leftSideArray,rightSideArray)
end
end

def merge(arrayLeftLocal,arrayRightLocal)
  left_Index=1
  right_Index=1
  sortedArray=Array.new
  sortedArrayIndex=0
  arrayLeftLocal=Array.new
  arrayRightLocal=Array.new
  arrayLeft=arrayLeftLocal
  arrayRight=arrayRightLocal

  while left_Index < arrayLeft.length && right_Index < arrayRight.length
    if arrayLeft[left_Index] < arrayRight[right_Index]
      sortedArray[sortedArrayIndex]=arrayLeft[left_Index]
      left_Index+=1

    elsif arrayRight[right_Index] < arrayLeft[left_Index]
        sortedArray[sortedArrayIndex]=arrayRight[right_Index]
        right_Index+=1
    else
      puts "The value Entered is Incorrect"
    end

  end
  return  sortedArray
end

myLilArray = [6,2,3,4]
mergeSort(myLilArray)






