#!/usr/bin/python3
"""Fetches a URL and displays the response body information."""

import requests

if __name__ == "__main__":
    response = requests.get("https://alu-intranet.hbtn.io/status")

    print("Body response:")
    print("\t- type: {}".format(type(response.text)))
    print("\t- content: {}".format(response.text))
