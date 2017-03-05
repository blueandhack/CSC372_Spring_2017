.PHONY: all clean

all: mean gcd hailstones vowels

mean: mean.hs
	ghc mean.hs -o mean

gcd: gcd.hs
	ghc gcd.hs -o gcd

hailstones: hailstones.hs
	ghc hailstones.hs -o hailstones

vowels: vowels.hs
	ghc vowels.hs -o vowels

clean:
	rm -f *.o *.hi mean gcd hailstones
