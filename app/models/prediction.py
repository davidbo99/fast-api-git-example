import numpy as np

from pydantic import BaseModel


class MachineLearningResponse(BaseModel):
    prediction: float


class HealthResponse(BaseModel):
    status: bool


// elemine class por oscar mora

    def get_np_array(self):
        return np.array(
            [
                [
                    self.feature1,
                    self.feature2,
                    self.feature3,
                    self.feature4,
                    self.feature5,
                ]
            ]
        )

    def mymethod(self):
        pass
/*ESTA ES UNA LINEA AGREGADA*/