q)input: read0 `:q1input.txt 
q)input
"sixrrmlkptmc18zhvninek"
"jcb82eightwond"
"twofourthree778nineeight"
"sqpxs1cgcrmctlgqvzxbcjzgr"
"nqkjxbmbpkz9eight8"
"one6fourfiveqndtrvgkkgthppnine"
"zbrbdpbfcfxcqq5oneninejfgqpkfn"
"hvlstzgvmjfivefourqjqtxdjmbxfour4four2"
"13dzbmbtl6"
"fourone2pmlxzzbmnfxg2"
"3fourrbvvlrsrbb2858"
"vlz4six89"
...

/Total 1000 inputs

q)function:{"F"$((first x inter .Q.n),(last x inter .Q.n))}

q)0 +/ function each input