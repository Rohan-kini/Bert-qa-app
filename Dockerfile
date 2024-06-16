FROM python:3.9  

#set the working directory to /code
WORKDIR /code  

#copy current dir comtents to container ar /code
COPY ./requirements.txt /code/requirements.txt  

#install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt 

RUN useradd user 

USER user

#set home to user's home dir 
ENV HOME=/home/user \ 
    PATH=/home/user/.local/bin:$PATH 

#set working dir to user's home directory
WORKDIR $HOME/app 

COPY --chown=user . $HOME/app 

##start the fastapi APP on any port
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","7860"]