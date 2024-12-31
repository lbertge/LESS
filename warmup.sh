DATA_DIR=./data
MODEL_PATH=EleutherAI/gpt-neo-125M
PERCENTAGE=1.0 # percentage of the full data to train, you can specify the training file you want to use in the script
DATA_SEED=3
JOB_NAME=gpt125M-p${PERCENTAGE}-lora-seed${DATA_SEED}

/less/scripts/train/warmup_lora_train.sh $DATA_DIR $MODEL_PATH $PERCENTAGE $DATA_SEED $JOB_NAME