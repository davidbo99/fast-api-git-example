<<<<<<< HEAD
from fastapi import FastAPI
 Hola oscar mora bonnett
=======

>>>>>>> 6e149d02ca370ecafb37e9e280591a012aac7c74

from core.events import create_start_app_handler
from core.config import API_PREFIX, DEBUG, PROJECT_NAME, VERSION

//luis Migue rojas paso por aqui
def get_application() -> FastAPI:
    application = FastAPI(title=PROJECT_NAME, debug=DEBUG, version=VERSION)
    application.include_router(api_router, prefix=API_PREFIX)
    pre_load = False
  
    return application

//Ejemplo visto en clase
app = get_application()

//prueba de itzel
def mymethod(self):
    pass
//julian estuvo aqui



//alejandra gallego estuvo aqui
//ALEJANDRA GALLEGO ESTUVO aqui
