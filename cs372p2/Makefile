.PHONY: all clean

all: mean gcd hailstones vowels insertionsort digitize

mean: mean.hs
	ghc mean.hs -o mean

gcd: gcd.hs
	ghc gcd.hs -o gcd

hailstones: hailstones.hs
	ghc hailstones.hs -o hailstones

vowels: vowels.hs
	ghc vowels.hs -o vowels

insertionsort: insertionsort.hs
	ghc insertionsort.hs -o insertionsort

digitize: digitize.hs
	ghc digitize.hs -o digitize

clean:
	rm -f *.o *.hi mean gcd hailstones vowels insertionsort digitize
