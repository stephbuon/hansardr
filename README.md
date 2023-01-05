## About hansardr

`hansardr` makes it easy to access the parsed debates from _The Hansard 19th-Century British Parliamentary Debates with Improved Speaker Names_ within the R environment. 

This is a clean corpus of the 19th-century British Parliamentary Debates (1803-1909), also known as Hansard. It identifies debates whose records are missing from UK Parliament’s corpus, and it also offers a field for disambiguated speakers. We believe these improvements will enable researchers to analyze the Hansard debates, including speaker discourse, in a way that has not been accessible before. 

For supplementary materials meant to support the analysis of the Hansard debates, including tokens and their raw counts, bigrams and their raw counts, special vocabulary, speaker metadata, and topics from LDA topic modeling, see our [full data set](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ZCYJH8) hosted on the Harvard Dataverse.

## Installation

#### Install from CRAN:

```
install.packages("hansardr")
```

#### Install from GitHub:

```
# install.packages("devtools")
library(devtools)
install_github("stephbuon/hansardr")
```
Now the package can be imported as usual:
```
library(hansardr)
```

## Contents

The Hansard corpus is subsetted by decade. Each decade has four types of data, labeled: "hansard," "debate_metadata," "speaker_metadata," and "file_metadata." In the following table, "YYYY" stands in for any given decade.

| Label  | Description | Key |
| ------------- | ------------- | ------------- |
| `hansard_YYYY`  | Hansard debate text | `sentence_id` |
| `debate_metadata_YYYY`  | Hansard debate metadata such as speechdate and title. | `sentence_id`  |
| `speaker_metadata_YYYY`  | Original speaker name, disambiguated speaker name, and more. | `sentence_id`  |
| `file_metadata_YYYY`  | Corpus metadata such as IDs for speech, source file, column, and more. | `sentence_id`  |

 We also provide keywords lists that were used in scholarly research.
 
| Label  | Description |
| ------------- | ------------- |
| `events` | Manually selected list of events and their years |

## Usage

Use `data()` to load files into the R environment.

```
data("hansard_1880")

data("debate_metadata_1880")
```
Constructing a larger data set from each subsection of the data is easy. 

Tables can be joined on the `sentence_id` field, a unique ID assigned to each sentence of the Hansard debates. 

```
combined_hansard_df_1800 <- left_join(hansard_1800, debate_metadata_1800, by = "sentence_id")
```

Tables can be bound by row using `rbind()` from base R, or `bind_rows()` from the tidyverse.

```
hansard_df_1850_through_1860 <- rbind(hansard_1850, hansard_1860)
```

or 

```
library(tidyverse)

hansard_df_1850_through_1860 <- bind_rows(hansard_1850, hansard_1860)
```

## Report a Problem
This is the first analysis-ready c19 Hansard corpus with disambiguated speaker names. As described [in our research](), we use mixed methods (algorithmic and qualitative) to disambiguate speaker names, and we arrive at about an approximate 85% disambiguation rate. If, while using our data set, you find a bug we would appreciate you sharing it with us! You can write an [issue](https://github.com/stephbuon/hansard-speakers/issues) on our [hansard-speakers](https://github.com/stephbuon/hansard-speakers) repository. 

### Citation

Buongiorno, Steph, 2021, _hansardr_. Available: https://github.com/stephbuon/hansardr.
