import sys

if sys.platform == "win32":
    try:
        import pyreadline3  # noqa: F401
    except ImportError:
        print(
            """
On Windows you need to install the additional pyreadline3 package for full
command-line functionality, e.g.:
py -m pip install --user pyreadline3
"""
        )
