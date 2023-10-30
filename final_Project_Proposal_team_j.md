**1. Problem Statement and Application**

Advancements in machine learning technologies, particularly
Convolutional Neural Networks (CNNs), have revolutionized how we
approach image classification problems. The implications of these
advancements are immense in fields such as healthcare, where accurate
and timely diagnosis can be life-saving. Similarly, in ecological
research, accurate species identification is crucial for biodiversity
studies. However, employing CNNs is not without its challenges,
including the need for large, labeled datasets to avoid overfitting,
computational cost, and the difficulty in transferring models across
different domains or tasks.

Our goal in this project is to develop, fine-tune, and evaluate a CNN
model. We aim to explore its adaptability across varied datasets and
compare its performance with a pretrained CNN model from ImageNet.
Through the use of traditional machine learning techniques to analyze
the CNN output, we intend to gain deeper insights into the architecture
of CNNs, the characteristics and complexities of different datasets, and
their practical applicability in real-world scenarios.

## **2. Image Dataset Selection**

For this project, we have selected three datasets to cover different
applications:

**Dataset 1:** Colorectal Cancer Classification: This dataset is sourced
from Zenodo and contains 100,000 original images and 6,000 images for
the project, segregated into three distinct classes: smooth muscle
(MUS), normal colon mucosa (NORM), and cancer-associated stroma (STR).
Each class has 2,000 images, and the image dimensions are 224px by 224px
in tif format. The dataset is ideal for developing diagnostic tools for
colorectal cancer \[1\].

**Dataset 2:** Prostate Cancer Classification: Also available from
Zenodo, this dataset contains 120,000 original images and 6,000 images
for the project, categorized into three types of tissue: Prostate Cancer
Tumor Tissue, Benign Glandular Prostate Tissue, and Benign Non-Glandular
Prostate Tissue. Each class has 2,000 images in jpg format with
dimensions of 300px by 300px \[2\].

**Dataset 3:** Animal Faces Classification: This dataset is available on
Kaggle and contains 16,130 original images and 6,000 project images,
grouped into three animal types: cats, dogs, and wildlife animals. Each
class has 2,000 images, with dimensions of 512px by 512px in jpg format.
This dataset is particularly useful for automated wildlife monitoring
systems \[3\].

+-----------+---------+--------+--------+-------------+-----+-------+
| Name      | Classes | Images |        | Images size | t   | I     |
|           |         | amount |        |             | ype | mages |
|           |         |        |        |             |     | per   |
|           |         |        |        |             |     | class |
+===========+=========+========+========+=============+=====+=======+
|           |         | Or     | P      |             |     |       |
|           |         | iginal | roject |             |     |       |
+-----------+---------+--------+--------+-------------+-----+-------+
| Dataset   | 3       | 1      | 6,000  | 224px \*    | tif | 2000  |
| 1:        |         | 00,000 |        | 224px       |     |       |
| C         |         |        |        |             |     |       |
| olorectal |         |        |        |             |     |       |
| Cancer    |         |        |        |             |     |       |
+-----------+---------+--------+--------+-------------+-----+-------+
| Dataset   | 3       | 1      | 6,000  | 300px \*    | jpg | 2000  |
| 2:        |         | 20,000 |        | 300px       |     |       |
|           |         |        |        |             |     |       |
| Prostate  |         |        |        |             |     |       |
| Cancer    |         |        |        |             |     |       |
+-----------+---------+--------+--------+-------------+-----+-------+
| Dataset   | 3       | 16,130 | 6,000  | 512px \*    | jpg | 2000  |
| 3:        |         |        |        | 512px       |     |       |
|           |         |        |        |             |     |       |
| Animal    |         |        |        |             |     |       |
| Faces     |         |        |        |             |     |       |
+-----------+---------+--------+--------+-------------+-----+-------+

Figure 1. Datasets features

## **3. Methodology**

Our methodology is structured around two main tasks, designed to offer a
comprehensive exploration and evaluation of CNN models and their
performance on different datasets.

## **3.1 Task 1: CNN-based Classification for Colorectal Cancer**

**Objective:** The primary focus of this task is to train a CNN model
specifically for the Colorectal Cancer Classification problem, using
Dataset 1.

**CNN Architectures:** We plan to experiment with several CNN
architectures such as ResNet-18, VGG, AlexNet, MobileNet, and
ShuffleNet. The choice of the architecture will be made based on
preliminary tests and the performance metrics like training and testing
accuracy/loss, precision, and recall.

**Evaluation Metrics:** Our evaluation will be exhaustive, including
metrics like training and testing accuracy, loss rates, precision,
recall, and F1-score.

**Dimensionality Reduction:** Post-classification, we will employ t-SNE
for dimensionality reduction of the CNN output features. This will
facilitate a visual interpretation of the feature spaces and how well
they are separated by class labels.

## **3.2 Task 2: Feature Extraction and ML-based Classification**

**Objective:** This task will focus on using pretrained CNN encoders for
feature extraction on Dataset 2 (Prostate Cancer) and Dataset 3 (Animal
Faces).

**Pre-trained Models:** Two types of pre-trained CNN encoders will be
used:

1.  The CNN encoder trained in Task 1.

2.  A pre-trained CNN encoder from the ImageNet database.

**Feature Visualization:** Similar to Task 1, we will employ t-SNE for
visualizing the extracted features. This will help us understand how
well the features extracted by pretrained models can be generalized
across different datasets.

**ML-based Classification:** For classifying the extracted features, we
will employ k-nearest neighbors for unsupervised learning and another
supervised learning technique, the choice of which will be based on the
characteristics of the extracted features.

**Evaluation Metrics:** The performance of these classifiers will be
rigorously evaluated using confusion matrices and standard metrics like
accuracy, precision, and recall.

By structuring our methodology around these two tasks, we aim to provide
a holistic understanding of the strengths and weaknesses of CNN models
across different applications. This will allow us to make more informed
decisions about their suitability for various real-world applications.

# **References**

1.  Kather, Jakob Nikolas, Halama, Niels, & Marx, Alexander. (2018).
    100,000 histological images of human colorectal cancer and healthy
    tissue (v0.1) \[Data set\]. Zenodo.
    <https://doi.org/10.5281/zenodo.1214456>

2.  Tolkach, Yuri. (2021). Datasets Digital Pathology and Artifacts,
    Part 1. <https://doi.org/10.5281/zenodo.4789576>

3.  Larxel. (2020). Animal Faces, Version 1.
    https://www.kaggle.com/datasets/andrewmvd/animal-faces/data

![A diagram of a project Description automatically
generated](media/image1.png){width="6.914470691163604in"
height="3.7714271653543308in"}
