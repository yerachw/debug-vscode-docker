import ptvsd
ptvsd.enable_attach(address=('0.0.0.0', 5678), redirect_output=True)
print('ptvsd is started')

