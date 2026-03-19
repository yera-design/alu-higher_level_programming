#!/usr/bin/python3
"""Fetches a URL and displays the response body information."""

import requests

if __name__ == "__main__":
    response = requests.get("https://alu-intranet.hbtn.io/status")
    content = response.text

    print("Body response:")
    print("\t- type: {}".format(type(content)))
    print("\t- content: {}".format(content))
