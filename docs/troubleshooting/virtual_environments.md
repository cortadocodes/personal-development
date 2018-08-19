# Virtual environment troubleshooting

| Problem | Error message | Solution |
| :------ | :------------ | :------- |
| Can't use pip inside a virtual environment | `bad interpreter: No such file or directory for pip venv` | Remove [spaces in path to venv](https://stackoverflow.com/questions/7911003/cant-install-via-pip-with-virtualenv) |
| Jupyter notebook started in virtual environment has `which python` reporting as inside the venv but `which python3` reporting as the system-wide installation; the python3 kernel is being used, leaving me unable to import  `matplotlib` |  | Run `pip3.7 install matplotlib` inside venv |
| Jupyter notebooks can't see packages I've installed in venv and `which pip` returns the global pip installation when run in the notebook |  | Install `ipykernel` in venv and create a new kernel for that venv; this kernel then runs correctly in the virtual environment and the installed packages are found |
