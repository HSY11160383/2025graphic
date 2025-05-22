//week14_PFont
size(300, 300);
textSize(50); //50幾號字
text("Hello", 10, 50); //預設字型
PFont font = createFont("Times New Roman", 50);
textFont(font); //換字型
text("Hello", 10, 100); //放下面點
//print(PFont.list()); //列出現在可用類型
//改成 for 迴圈 把全部字型列出來 分行
for(String name : PFont.list()) println(name);
