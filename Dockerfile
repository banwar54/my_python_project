FROM python:3.9-slim

WORKDIR /app

COPY dist/*.whl .
# RUN pip install *.whl
RUN pip install *.whl --force-reinstall --break-system-packages

CMD ["myapp"]