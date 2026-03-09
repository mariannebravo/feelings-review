import kagglehub

path = kagglehub.dataset_download(
    "snap/amazon-fine-food-reviews",
    output_dir="datasets/amazon-fine-food-reviews",
)

print("dataset file: ", path)
