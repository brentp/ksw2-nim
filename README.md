```Nim
import ksw2
import sequtils

var tgt = "CGAAACTGGGCTACTCCATGACCAGGGGCAAAATAGGCTTTTAGCCGCTGCGTTCTGGGAGCTCCTCCCCCTTCTGGGAGCTCCTCCCCCTCCCCAGAAGGCCAAGGGATGTGGGGGCTGGGGGACTGGGAGGCCTGGCAGTCTT"
var qry = "CGAAACTGGGCTACTCCATGACCAGGGGCAAAATAGGCTTTTAGCCGCTGCGTTCTGGGAGCTCCTCCCCCTCCCCAGAAGGCCAAGGGATGTTGGGG"
var tenc = new_seq[uint8](tgt.len)
var tqry = new_seq[uint8](qry.len)
# encode the strings into uint8s
tgt.encode(tenc)
qry.encode(tqry)

var ez = new_ez(match=int8(1), mismatch=int8(-2), gap_open=3'i8, gap_ext=1'i8)

tqry.align_to(tenc, ez, flag=KSW_EZ_EXTZ_ONLY or KSW_EZ_RIGHT)

var cig = toSeq(ez.cigar)
echo cig

echo ez.draw(qry, tgt)
```
