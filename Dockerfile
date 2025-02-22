FROM lw:v1
RUN yum install python3 -y && pip3 install flask
WORKDIR /code
COPY app.py ./
CMD ["argument"]
ENTRYPOINT ["python3", "app.py"]

HEALTHCHECK --interval=10s --retries=10 CMD curl http://127.0.0.1:5000 || exit 1
