def angkaMisteri(m,n)
    # m = 6
    # n = 4
    x = 0
    while (m > n)
        m--
        n += 2
        x =+ m + n
        return x
    end
end
puts angkaMisteri(6,4)