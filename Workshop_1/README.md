# Workshop 1 Homework
## Dlthub


## Question 1: What is the sum of the outputs of the generator for limit = 5?
- **A**: 10.23433234744176
- **B**: 7.892332347441762
- **C: 8.382332347441762**
- **D**: 9.123332347441762

---

## Question 2: What is the 13th number yielded by the generator?
- **A**: 4.236551275463989
- **B**: 3.605551275463989
- **C**: 2.345551275463989
- **D: 5.678551275463989**

---
## Question 3: Append the 2 generators. After correctly appending the data, calculate the sum of all ages of people.
- **A**: 353
- **B**: 365
- **C: 378**
- **D**: 390

``` python
data_1 = [{'ID': 1, 'Name': 'Person_1', 'Age': 26, 'City': 'City_A'},
         {'ID': 2, 'Name': 'Person_2', 'Age': 27, 'City': 'City_A'},
         {'ID': 3, 'Name': 'Person_3', 'Age': 28, 'City': 'City_A'},
         {'ID': 4, 'Name': 'Person_4', 'Age': 29, 'City': 'City_A'},
         {'ID': 5, 'Name': 'Person_5', 'Age': 30, 'City': 'City_A'}]

data_2 = [{'ID': 3, 'Name': 'Person_3', 'Age': 33, 'City': 'City_B', 'Occupation': 'Job_3'},
         {'ID': 4, 'Name': 'Person_4', 'Age': 34, 'City': 'City_B', 'Occupation': 'Job_4'},
         {'ID': 5, 'Name': 'Person_5', 'Age': 35, 'City': 'City_B', 'Occupation': 'Job_5'},
         {'ID': 6, 'Name': 'Person_6', 'Age': 36, 'City': 'City_B', 'Occupation': 'Job_6'},
         {'ID': 7, 'Name': 'Person_7', 'Age': 37, 'City': 'City_B', 'Occupation': 'Job_7'},
         {'ID': 8, 'Name': 'Person_8', 'Age': 38, 'City': 'City_B', 'Occupation': 'Job_8'}]

# Append the two generators
combined_data = data_1 + data_2

# Calculate the sum of all ages
sum_of_ages = sum(person['Age'] for person in combined_data)

print("Sum of all ages:", sum_of_ages)
```

---
## Question 4: Merge the 2 generators using the ID column. Calculate the sum of ages of all the people loaded as described above.
- **A**: 215
- **B: 266**
- **C**: 241
- **D**: 258

``` python
from itertools import groupby

# Merge the two generators using the ID column
merged_data = [max(group, key=lambda x: x['ID']) for _, group in groupby(sorted(combined_data, key=lambda x: x['ID']), key=lambda x: x['ID'])]

# Calculate the sum of ages
sum_of_ages_merged = sum(person['Age'] for person in merged_data)

print("Sum of ages after merging:", sum_of_ages_merged)

```

---
[ref](https://colab.research.google.com/drive/1Te-AT0lfh0GpChg1Rbd0ByEKOHYtWXfm#scrollTo=wLF4iXf-NR7t&forceEdit=true&sandboxMode=true)