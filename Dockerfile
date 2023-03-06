FROM python:3.11.1

ENV PYTHONUNBUFFERED 1



COPY poetry.lock pyproject.toml ./
RUN pip install --upgrade pip && \
    pip install poetry && \
    poetry config virtualenvs.create false

// Se eliminan lineas ARG, RUN if y RUN poetry - Shirley Buitrago

/*ARG DEV=false*/
/*RUN if [ "$DEV" = "true" ] ; then poetry install --with dev ; else poetry install --only main ; fi*/
/*RUN poetry install*/

COPY ./app/ ./
COPY ./ml/model/ ./ml/model/

ENV PYTHONPATH "${PYTHONPATH}:/app"

EXPOSE 8080


// Agregar linea comentario Pablo Figueroa
// esta linea fue agregada por juliansan86

