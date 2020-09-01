#1
echo 'Hello world'
#2 Primero habría que ir con el comando cd hasta la carpeta exercice en la-bash
mkdir new_dir
#3
rm -d new_dir
#4 Primero tendría que ir con cd hasta la carpeta lorem donde está el archivo sed.txt
cp sed.txt /home/diegon8/datamad0820/module-2/lab-bash/lorem-copy
#5
cp at.txt /home/diegon8/datamad0820/module-2/lab-bash/lorem-copy ; cp lorem.txt /home/diegon8/datamad0820/module-2/lab-bash/lorem-copy
#6 
cat sed.txt
#7
cat at.txt lorem.txt
#8 Nos movemos a la carpeta lorem-copy con cd
head -3 sed.txt
#9 
tail -3 sed.txt
#10
echo 'Homo homini lupus.' >> sed.txt
#11
tail -3 sed.txt
#12
sed -i 's/et/ET/g' at.txt
#13
whoami
#14
wc -l sed.txt
#15
ls -dq *lorem* | wc -l
#16 Volvemos a la carpeta lorem con cd
grep 'et' at.txt
#17
grep -c 'et' at.txt
#18 volvemos a lorem-copy con cd
grep -c 'et' at.txt lorem.txt sed.txt

###BONUS
#1
name='Diego'
#2
echo $name
#3
mkdir $name
#4
rm -d $name
#5 cd to lab-bash
  #5.1
  for file in $(ls lorem); do echo $file; done;
  #5.2
  for file in $(ls lorem); do echo -n "$file" | wc -m ; done;
  #5.3
  for file in $(ls lorem); do echo "'$file' has '${#file}' characters length"; done;

#6
top






