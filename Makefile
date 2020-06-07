.PHONY: install
install:
	asdf install
	pip install -r requirements.txt
	asdf reshim
	jupyter nbextension enable --py widgetsnbextension
	jupyter labextension install @jupyter-widgets/jupyterlab-manager
	jupyter labextension install jupyterlab-plotly@4.8.1
	jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.8.1

.PHONY: start
start:
	jupyter lab
