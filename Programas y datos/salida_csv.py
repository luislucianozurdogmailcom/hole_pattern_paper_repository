import pandas as pd
import os

"""
Programa para borrar los indices y los nombres de las columnas en la data
"""

for i in os.listdir(): 
    
    # Leemos los archivos
    if (i[-4:] == 'xlsx'): 

        # Solo dejamos pasar los archivos xlsx
        df = pd.read_excel(i); 
        
        # Convertimos a dataframe a los archivos
        if 'Unnamed: 0' in df.columns:
            # Tiramos a la basura la columna de indices hecha antes
            df = df.drop(columns = ['Unnamed: 0']); 
        
        # Exportamos a CSV
        df.to_csv(i[:-4]+'csv',index = False, header = False)