FROM registry.redhat.io/rhel9/python-312@sha256:c91642bdeddb1542f7081bc7846926f7741f75be4f35ef33f8908c1db236c10b

# By default, listen on port 8081
EXPOSE 8081/tcp
ENV FLASK_PORT=8081

# Set the working directory in the container
WORKDIR /projects

# Copy the content of the local src directory to the working directory
COPY . .

# Install any dependencies
# RUN python3 -m pip install -r requirements.txt

# Specify the command to run on container start
CMD [ "python", "./app.py" ]
