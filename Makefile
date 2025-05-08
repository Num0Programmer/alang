SRC=./src
BIN=alc


all: main.s
	cc main.s -o $(BIN)

main.s: $(SRC)/main.qbe
	qbe $(SRC)/main.qbe -o main.s

clean:
	rm -rf *.s $(BIN)
