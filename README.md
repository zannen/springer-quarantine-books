# springer-quarantine-books

This Docker image downloads all the
[473 books](https://link.springer.com/search?facet-content-type=Book&package=mat-covid19_textbooks)
that [Springer](https://www.springer.com/gb) have kindly made available.

## Notes

* This docker image does not contain any books. Books are downloaded
  directly from Springer when you run the container, assuming Springer continue
  to make the books available.
* Thank you to Antoine Soetewey at [Stats and R](https://www.statsandr.com/)
  for providing the [instructions](https://www.statsandr.com/blog/a-package-to-download-free-springer-books-during-covid-19-quarantine/) that this docker image uses.

## Running

```bash
# Pull the container.
docker pull oreandawe/springer-quarantine-books:latest

# Run the container.
# Change "`/path/to/your/downloads/location`" to a real directory.
docker run --rm -ti \
    -v /path/to/your/downloads/location:/downloads \
    oreandawe/springer-quarantine-books:latest
```
