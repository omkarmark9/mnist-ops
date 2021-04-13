# Document who is responsible for this image
MAINTAINER Omkar Darekar "oad245@nyu.edu"

# Install just the Python runtime (no dev)

# Expose any ports the app is expecting in the environment
ENV PORT 8001
EXPOSE $PORT

# Set up a working folder and install the pre-reqs

WORKDIR /app
ADD mnist/requirements.txt /app
RUN pip3 install --upgrade pip
RUN pip3 install -vvv --no-cache-dir -r requirements.txt

#RUN pip install torch==1.2.0 torchvision==0.4.0 -f https://download.pytorch.org/whl/torch_stable.html
#RUN pip3 install https://download.pytorch.org/whl/nightly/cpu/torch-1.4.0.dev20191015%2Bcpu-cp35-cp35m-win_amd64.whl


# Add the code as the last Docker layer because it changes the most
ADD mnist/main.py  /app/main.py


# Run the service
CMD [ "python3", "main.py" , "--epochs", "1"]
