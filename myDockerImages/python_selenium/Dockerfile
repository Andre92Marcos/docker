FROM python:3

# Install curl
# Install unzip

RUN apt-get -yqq update && \
    apt-get -yqq install curl &&\
    apt-get -yqq install unzip &&\
    apt-get -yqq install gnupg

# Install required libs for chromedriver

RUN apt-get install -yqq libglib2.0-0 && \
    apt-get install -yqq libx11-6 && \
    apt-get install -yqq libnss3

# Set chromedriver version
ENV CHROMEDRIVER_VERSION 2.43


# Install Chrome WebDriver
RUN mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    rm /tmp/chromedriver_linux64.zip && \
    chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver

# Install Google Chrome
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -yqq update && \
    apt-get -yqq install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 9515