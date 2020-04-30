# springer-quarantine-books

This Docker container downloads all the
[473 books](https://link.springer.com/search?facet-content-type=Book&package=mat-covid19_textbooks)
that [Springer](https://www.springer.com/gb) have kindly made available.

Note: This docker image does not contain any books. Books are downloaded
directly from Springer when you run the container.

## Running

, then run:

```bash
# Pull the container.
docker pull oreandawe/springer-quarantine-books:latest

# Run the container.
# Change "`/path/to/your/downloads/location`" to a real directory.
docker run --rm -ti \
    -v /path/to/your/downloads/location:/downloads \
    oreandawe/springer-quarantine-books:latest
```
