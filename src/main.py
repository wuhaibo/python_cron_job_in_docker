import numpy as np
a = np.arange(15)
a_str = ' '.join(str(a))

with open('/app/result.txt','a') as f:
    f.write(a_str)


