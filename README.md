<!-- omit form toc -->
# Mars Terrain: a CV Segmentation task

Project for the _Artificial Neural Networks and Deep Learning_ course held at Politecnico di Milano in the academic year 2024-2025 by Professor Boracchi and Professor Matteucci.

> 🏆 This project received a perfect evaluation of 5.5/5.5. 

<!-- omit from toc -->
# Table of contents

- [Installing](#installing)
  - [Prerequisites](#prerequisites)
  - [Cloning the Repository](#cloning-the-repository)
  - [Installing the Libraries](#installing-the-libraries)
- [Project](#project)
- [Results](#results)
- [Structure](#structure)
- [Authors](#authors)

# Installing

## Prerequisites

- Python 3.x
- Pip (for installing Python libraries)

## Cloning the Repository

1. Clone the repository to your local machine using the following command:
```bash
git clone https://github.com/simone-licciardi/anndl-hw2
```

2. Navigate to the project directory using the following command:
```bash
cd anndl-hw2
```

## Installing the Libraries

With Pip, install the required libraries by running the following command:
```bash
pip install -r requirements.txt
```

# Project

**Objective:** segment Mars terrain images into five classes: Background, Soil, Bedrock, Sand, and Big Rock.

**Dataset:** 2,615 grayscale images (64x128 resolution), filtered to 2,505 images.

**Methodology:** 
  - Built an initial encoder-decoder architecture as benchmark.
  - Added layer for Egde Detetions, Thesholding and others methods of computer vision
  - Implemented a dual UNet architecture (Global and Local perspectives).
  - Designed custom loss functions and loss schedules.
  - Applied data augmentation and fine-tuned optimization hyperparameters.

# Structure

The repository [`source`](./source/) contains the notebook to train the final model [`model.ipynb`](./source/model.ipynb), and a folder to preprocess the dataset [`preprocessing`](./source/preprocessing). The latter contains two notebooks:
- [`filtration.ipynb`](./source/preprocessing/filtration.ipynb): containing the code we used to inspect images and labels and to remove the images containing aliens and their labels.
- [`augmentation.ipynb`](./source/preprocessing/augmentation.ipynb): containing the code we used to implement data augmentation (simple geometric transformations and image/mask blending).

The repository [`archive`](./archive/) is an history of our the most relevant notebooks to understand the development of our final solution and its elements are detailed in the report.

# Results

Our model achieved a 64.91% test set Mean IoU and perfect evaluation. You can see the ranking [here](https://www.kaggle.com/competitions/an-2-dl-2024-2025-homework-2/discussion?sort=hotness).
You can check out the final [`report.pdf`](./report/report.pdf). 

# Authors

- Noemi Bongiorni ([@NoemiBongiorni](https://github.com/NoemiBongiorni))
- Simone Licciardi ([@simone-licciardi](https://github.com/simone-licciardi))
- Alessandro Pedone ([@alessandropedone](https://github.com/alessandropedone))
- Federico Maria Riva ([@fede-mat](https://github.com/fede-mat))