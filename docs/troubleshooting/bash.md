# Bash troubleshooting

| Problem | Error message | Solution |
| :------ | :------------ | :------- |
| Can't use pip inside a virtual environment | `bad interpreter: No such file or directory for pip venv` | [Spaces in path to venv](https://stackoverflow.com/questions/7911003/cant-install-via-pip-with-virtualenv) |
| Jupyter notebook started in virtual environment has `which python` reporting as inside the venv but `which python3` reporting as the system-wide installation; the python3 kernel is being used, leaving me unable to import  `matplotlib` |  | Run `pip3.7 install matplotlib` inside venv |
