SUMMARY = "A TOML-0.4.0 parser/writer for Python"
HOMEPAGE = "https://pypi.python.org/pypi/pytoml/"
SECTION = "devel/python"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=cfff423699bdaef24331933ac4f56078"

SRC_URI[md5sum] = "e59dd36a559dd2a876e4c149c69e947b"
SRC_URI[sha256sum] = "8eecf7c8d0adcff3b375b09fe403407aa9b645c499e5ab8cac670ac4a35f61e7"

inherit pypi

inherit pypi setuptools

BBCLASSEXTEND = "native nativesdk"
