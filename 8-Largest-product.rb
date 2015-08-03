
mat = %w(73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450)
#converts the matrix to an array of independent characters
mat = mat.join("").to_s.chars
#converts the array elements to integers, previously we needed to convert it to strings
mat.map!(&:to_i)

# var 'a' is gonna be our control to iterate with 4 x 4 through matrix
a = 0
# in mat2 we are goin to save the results of 4 * 4
mat2 = []
# we iterate through te array to calculate. When almost at the end it needs
# to stop or it would return nil when there is nothing to calculate with
mat.each do |x|
    if a == (mat.length - 12) then break end
    mat2 << mat[a] * mat[a + 1] * mat[a + 2] * mat[a + 3] * mat[a + 4] * mat[a + 5] * mat[a + 6] * mat[a + 7] * mat[a + 8] * mat[a + 9] * mat[a + 10] * mat[a + 11] * mat[a + 12]
    a += 1
end

p mat2.sort.uniq

#sol: 23514624000

# ATTENTION!!!! To all my beloved friends and unknowns, I know this code hurts the eyes..
# I just started Ruby less than 1 month ago and have no previous experience in 
# coding. I'll fix that in the future ;) (or maybe not, it is like a painting
# when you are just a child with a bunch of crayons..) 03/08/2015