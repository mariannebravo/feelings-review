# Sentiment Analysis Algorithm for Product Reviews

### 1) Project goals
- Build a model capable of automatically classifying the polarity (positive/negative) of textual evaluations.
- Extract insights into the factors that most influence customer satisfaction.
- Creating a compelling narrative for stakeholders: "What really matters to the consumer".

**Skills:** `Problem Definition of NLP (Natural Language Processing)`, `Binary Classification`, `Business Alignment`.

<hr />

### 2) Business Questions
- Which words most affect positive or negative sentiment?
- How much time can we save by automating the analysis?
- How does sentiment vary by category/product?

**Skills:** `Strategic Thinking`, `Formulating Hypotheses`, `Value Communication`. 

<hr />

### 3) Step 1 - Collection and Understanding
- Download dataset: [Amazon Fine Food Reviews](https://www.kaggle.com/datasets/snap/amazon-fine-food-reviews)
- Load with Pandas: `pd.read_csv()`
- Execute basic Pandas commands: `df.info()`, `df.head()`, `df.describe()`
- Create `target` column: positive (score ≥ 4) and negative (score ≤ 2)
- **Verify:** size, duplicate, class distribution

**Deliverables in the notebook:**
- [x] Create cell with statistic values of: shape, columns, % of missing data
- [x] Bar chart: distribution of scores (1-5)
- [x] Markdown cell: **"In this dataset we have [...] reviews, [...]% positive, [...]% negative."**

**Skills:** `Data Ingestion`, `Initial Analysis`, `Basic Visualization`

<hr />

### 4) Step 2 - Data Cleaning
**What to do in the notebook:**
- Remove duplicated values: `df.drop_duplicated()`
- Filter small texts: `df[df['Text'].str.len > 20]`
- Create function to clean text and apply to column `Text`: **Lower Case, Remove ponctuation and Remove URLs.**

**Deliverable in the notebook:**
- [x] Cell with function to clean the text
- [x] **Histogram:** size of the text before and after
- [x] Markdown Cell: **"We remove X duplicated values, Y small texts"**

**Skills:** `Text Cleaning`, `String Manipulation`, `Transformation`

<hr />

### 5) Step 3 - Exploratory Data Analysis (EDA)
**What to do in this notebook:**

- Count positive reviews vs negative reviews
- Create `WordClouds` for each positive and negative reviews
- Extract the top 20 most frequent words by class.
- Plot the evolution of sentiment over time (if applicable).

**Deliverable in the notebook:**

- [ ] **Bar chart**: positive/negative count
- [ ] 2 WordClouds side-by-side
- [ ] **Table or Graph:** top 20 word by sentiment
- [ ] **Markdown Cell:** Main insights

**Skills:** `EDA to NLP`, `Text Visualization`, `Frequency Analysis`

<hr />

### 6) Step 4: Feature Engineering
**What do to in the notebook:**

- Import `TfidfVectorizer` from `sklearn`
- Configure: `max_features=500, ngram_range=(1, 2)`
- Apply `fit_transform` in the cleaned texts
- Create: X (Features) and Y (Target)

**Deliverable in the notebook:**

- [ ] Cell with vectorization code
- [ ] Print: TF-IDF matrix shape
- [ ] Markdown Cell: explaining TF-IDF choice

**Skills:** `Word vetorization`, `Feature Enginerring for NLP`

<hr />

### 7) Step 5 - Modeling
**What to do in the notebook:**

- Split training/test: `train_test_split()`
- Train 3 models:

  1. **Logistic Regression** (Classification Algorithm)
  2. **Linear SVM** (Classification Algorithm)
  3. **Random Fores or XGBoost** (Decision Tree)

**Deliverable in the notebook:**

- [ ] Cell with training code for each model
- [ ] *Comparative table*: F1, Precision, Recall of each model
- [ ] **Markdown Cell**: "Best model: [name] with F1=X"

**Skills:** `Classification Modeling`, `Algorithm Comparison`

<hr />

### 8) Step 6 - Assessment
**What to do in the notebook:**

- Calculate metrics: F1, Precision, Recall, AUC
- Plot confusion matrix (heatmap)
- Plot ROC curve
- Extract coefficients from the best model
- Identify the top 20 most important words

**Deliverable in the notebook:**

- [ ] Confusion matrix of the best model
- [ ] ROC curve
- [ ] Bar chart: top positive vs. negative words
- [ ] **Markdown cell**: interpretation of results

**Skills**: model evaluation, metrics analysis, interpretation

<hr />
