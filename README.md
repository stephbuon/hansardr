## About hansardr

`hansardr` is an easy way to access the _SMU 19th-Century Hansard Corpus with Improved Speaker Names_ within the R environment. The _SMU 19th-Century Hansard Corpus with Improved Speaker Names_ is a clean corpus of the 19th-century British Parliamentary Debates (1803-1909), also known as Hansard. This corpus identifies debates whose records are missing from UK Parliament’s corpus, and it also offers a field for disambiguated speakers. We believe these improvements will enable researchers to analyze the Hansard debates, including speaker discourse, in a way that has not been accessible before. 

The `hansardr` package offers the full corpus, debate metadata, and file metadata. For supplementary materials meant to support the analysis of the Hansard debates, including tokens and their raw counts, bigrams and their raw counts, special vocabulary, speaker metadata, and topics from LDA topic modeling, see [our data set hosted on the Harvard Dataverse](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ZCYJH8). 

## To install from GitHub
```
require(devtools)
install_github("stephbuon/hansardr")
```
After installation, the package can be imported as usual:
```
library(hansardr)
```

## Contents

The `hansardr` package offers three types of data, labeled: "hansard," "debate_metadata," and "file_metadata" for each decade of the Hansard corpus. In the following table, "YYYY" stands in for any given decade.

| Label  | Description | Key |
| ------------- | ------------- | ------------- |
| `hansard_YYYY`  | Hansard debate text | `sentence_id` |
| `debate_metadata_YYYY`  | Hansard debate metadata such as speechdate, speaker, and title | `sentence_id`  |
| `file_metadata_YYYY`  | Metadata about the Hansard Corpus files | `sentence_id`  |

Example:
```
"hansard_1880"
```

## Usage

Data files can loaded into the R environment using the familiar `data()` function:

```
data("hansard_1880")
data("debate_metadata_1880")
```
Each table can be joined on the `sentence_id` field, a unique ID assigned to each sentence of the Hansard debates. 

```
combined_df <- left_join(hansard_1800, debate_metadata, by = "sentence_id")
```

### Citation

Buongiorno, Steph, 2021, _hansardr_. Available: https://github.com/stephbuon/hansardr.
