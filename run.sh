source ./venv/bin/activate
gunicorn run:app -b=0.0.0.0:5007 --keyfile=./certificate/server.key --certfile=./certificate/server.crt -w 1 --thread=2 -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker