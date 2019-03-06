def RBinarySearch(l, h, key)
arr = [3,5,7,8,9,10,11,12,13,14,16,18,19,20,36]
mid = (l + h)/2

if l == h
    if key == mid
        return l
    else
        return 0
    end
else
    if key < arr[mid]
        h = mid - 1
        RBinarySearch(l, h, key)
    else
        l = mid + 1
        RBinarySearch(l, h, key)
    end
end

return false

end




