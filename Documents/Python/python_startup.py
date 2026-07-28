import math

def dpi(pw: int, ph: int, idiag: float) -> float:
    return math.sqrt(pw * pw + ph * ph) / idiag
