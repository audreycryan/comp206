#!/bin/bash
cd /home/2017/acryan
if test -d "project"
then
cd project
else
mkdir project
cd project
fi
if test -d "cs206"
then
cd cs206
else
mkdir cs206
cd cs206
fi
if test -d "$1"
then
echo "This project name has already been used."
exit 0
else
mkdir $1
cd $1
mkdir archive
mkdir backup
mkdir docs
mkdir assets
mkdir database
mkdir source
fi
cd source
cat > backup.sh <<EOF
#!/bin/bash
cp *.c *.h ../backup
EOF
chmod 777 backup.sh
echo "Your project directories have been created."
