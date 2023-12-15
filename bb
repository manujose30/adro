from nltk import bigrams,word_tokenize
sentence="Hello Have a Good Day" 
words=word_tokenize(sentence)
bigrams_list=list(bigrams(words))
print(bigrams_list)
////


import requests
from bs4 import BeautifulSoup

def simple_web_crawler(url, max_depth=2): visited_urls = set()
def crawl(url, depth)
if depth > max_depth or url in visited_urls:
return print(f"Crawling: {url}")
 
try:
 
response = requests.get(url) visited_urls.add(url)

if response.status_code == 200:
soup = BeautifulSoup(response.text, 'html.parser')
title = soup.title.string.strip() if soup.title else 'No title found' print(f"Page Title: {title}")

for link in soup.find_all('a', href=True): next_url = link['href'] crawl(next_url, depth + 1)


except Exception as e:
print(f"Error crawling {url}: {e}")
 


crawl(url, depth=1)

if  name	== " main ": 
start_url = "https://aesajce.in" simple_web_crawler(start_url)
///
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, LabelEncoder from sklearn.datasets import load_iris
from tensorflow.keras import models, layers


# Load the Iris dataset iris = load_iris()
X = iris.data y = iris.target


# Split the dataset into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)


# Standardize the features scaler = StandardScaler()
X_train = scaler.fit_transform(X_train) X_test = scaler.transform(X_test)


# One-hot encode the target variable label_encoder = LabelEncoder()
y_train = label_encoder.fit_transform(y_train) y_test = label_encoder.transform(y_test)


# Create a simple feedforward neural network model model = models.Sequential()
model.add(layers.Dense(64, activation='relu', input_shape=(4,))) model.add(layers.Dense(32, activation='relu'))
model.add(layers.Dense(3, activation='softmax')) # Output layer with 3 classes

# Compile the model model.compile(optimizer='adam',
loss='sparse_categorical_crossentropy', # Use 'categorical_crossentropy' if y is one-
 

 
hot encoded
metrics=['accuracy'])

# Train the model
model.fit(X_train, y_train, epochs=50, batch_size=8, validation_split=0.1)

# Evaluate the model on the test set
test_loss, test_acc = model.evaluate(X_test, y_test) print(f'Test accuracy: {test_acc}')



