**Volume**

    The VOLUME instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.

        VOLUME /etc/spica/support/conf


**Add**

    The ADD instruction copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.

        ADD ./target/bms-support-tool-webapp-*.war bms-support-tool.war

**FROM**

    The FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions. As such, a valid Dockerfilemust start with a FROM instruction. The image can be any valid image – it is especially easy to start by pulling an image from the Public Repositories.