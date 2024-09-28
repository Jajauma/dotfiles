import math
import sys
from pathlib import Path

if sys.platform == "win32":
    sys.path.append(str(Path.home() / "Documents" / "Python" / "pyreadline3.zip"))
    import pyreadline3  # noqa: F401


def dpi(pw: int, ph: int, idiag: float) -> float:
    return math.sqrt(pw * pw + ph * ph) / idiag
