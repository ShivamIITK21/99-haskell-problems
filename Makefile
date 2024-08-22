run:
	ghc -outputdir ./build -o ./build/P$(P) P$(P).hs && ./build/P$(P)
