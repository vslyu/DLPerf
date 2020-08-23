MODEL="resnet50"
SHELL_FOLDER=$(dirname $(readlink -f "$0"))
BATCH_SIZE=128

i=1
while [ $i -le 6 ]
do
  bash $SHELL_FOLDER/train.sh resnet50 0 ${BATCH_SIZE} 224 $i
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Finished Test Case ${i}!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  let i++
  sleep 20
done


i=1
while [ $i -le 6 ]
do
  bash $SHELL_FOLDER/train.sh resnet50 0,1 ${BATCH_SIZE} 224 $i
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Finished Test Case ${i}!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  let i++
  sleep 20
done


i=1
while [ $i -le 6 ]
do
  bash $SHELL_FOLDER/train.sh resnet50 0,1,2,3 ${BATCH_SIZE} 224 $i
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Finished Test Case ${i}!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  let i++
  sleep 20
done


i=1
while [ $i -le 6 ]
do
  bash $SHELL_FOLDER/train.sh resnet50 0,1,2,3,4,5,6,7 ${BATCH_SIZE} 224 $i
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Finished Test Case ${i}!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  let i++
  sleep 20
done