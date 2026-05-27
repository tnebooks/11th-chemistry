## 11th Chemistry

```sh
git clone https://github.com/gurukulams/design-system ../design-system
```

in Linux

```bash
export QUESTIONS_FOLDER="$PWD/questions"
export PUBLIC_FOLDER="$PWD/public" 
npm run watch --prefix ../design-system
```

in Windows `Cmd`

```bash
set QUESTIONS_FOLDER=%cd%\questions
set PUBLIC_FOLDER=%cd%\public
cd ..\design-system
npm i
npm run watch
```

```bash
hugo server  --themesDir ../ --disableFastRender
```