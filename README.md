To reproduce:

```
git clone https://github.com/aantron/bs-exn-repro.git
cd catches
npm install
npm run build
node lib/js/catches.js
```

Output is:

```
caught
caught

~/repro/catches/lib/js/catches.js:53
    throw exn$2;
    ^
Invalid_argument,-3,foo
```

but I would have expected

```
caught
caught
caught
```
