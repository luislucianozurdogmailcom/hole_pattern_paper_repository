import pandas as pd
import os
import math

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
            
            # Cambiamos la columna a frec adim * 2pi
            df['Frec Adim'] = df['Frec Adim'] * 2 * math.pi;

            # Printeo por motivos de testing
            print(df['Frec Adim'])
        # Exportamos a CSV
        df.to_csv(i[:-4]+'csv',index = False, header = False)