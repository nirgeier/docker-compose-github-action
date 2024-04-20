# Docker Compose GitHub action

* This action handle docker-compose common actions for building, running and publishing containers

## Inputs

### compose-file

**Required** 
- The docker-compose file. 
- Default `docker-compose.yaml`.


## Example usage

```yaml
uses: actions/docker-compose-action
with:
  compose-file: docker-compose.yaml
```
