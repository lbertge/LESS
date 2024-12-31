CKPT=33832

TRAINING_DATA_NAME=dolly
TRAINING_DATA_FILE=./data/train/processed/dolly/dolly_data.jsonl # when changing data name, change the data path accordingly
GRADIENT_TYPE="adam"
DATA_SEED=3
PERCENTAGE=1.0
MODEL_PATH=../out/gpt125M-p${PERCENTAGE}-lora-seed${DATA_SEED}
OUTPUT_PATH=../grads/gpt125M-p${PERCENTAGE}-lora-seed${DATA_SEED}/${TRAINING_DATA_NAME}-ckpt${CKPT}-${GRADIENT_TYPE}
DIMS="8192"

./less/scripts/get_info/get_train_lora_grads.sh "$TRAINING_DATA_FILE" "$MODEL_PATH" "$OUTPUT_PATH" "$DIMS" "$GRADIENT_TYPE"
