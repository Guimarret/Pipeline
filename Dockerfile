FROM public.ecr.aws/lambda/python:latest

COPY app.py ${LAMBDA_TASK_ROOT}
COPY requirements.txt .
RUN pip install -r requirements.txt

CMD [ "app.handler" ]