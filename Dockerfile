FROM gaarv/jupyter-keras

# update pip
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

VOLUME /app
WORKDIR /app

EXPOSE 8888

COPY . /app

#ENTRYPOINT [ "/bin/bash" ]
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]
# jupyter notebook --ip=0.0.0.0 --allow-root --NotebookApp.token=''