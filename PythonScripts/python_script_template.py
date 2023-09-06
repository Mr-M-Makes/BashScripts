#! /bin/python
#####################################################
# This is a template for a python script            #
# Created by Blake Matthews                         #
# Date:09/06/23                                     #
#####################################################
"""
This script does the following:
1.Timestamps the start of the script.
2.Does blankity blank.
3.Logs the output to a file in the same directory as the script.
4.Timestamps the end of the script.
"""

import os
#import sys
import logging
#import subprocess
#import re
#import shutil
#import time
#import csv
#import json
#import getpass




# Set the log level to DEBUG, INFO, WARNING, ERROR, or CRITICAL
logging.basicConfig(format='%(levelname)s:%(asctime)s %(message)s',filename="log.log", level=logging.DEBUG)

# Log the start of the script
logging.info("Script started")

# Do blankity blank
os.system("echo 'Hello World!'")

# Log the end of the script
logging.info("Script ended")

# End of script
