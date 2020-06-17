# Syncrify
A private-cloud backup and synchronization.

* Keeps your files private to your network. No third-party will ever get access to your files.
* Incremental, Secure and Fast
* 100% web-based administration
* Clients for Windows, Linux, Unix and MacOS

## Usage

```
docker run \
-d \
--name syncrify \
-p 5800:5800 \
-e TZ="<timezone>" \
-v <path/to/projects>:/var/projects \
-v <path/to/repositories>:/repositories \
inquam/syncrify
```
