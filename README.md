TESTED:
Ubuntu Linux 22.04
bash

INSTALLATION:
 - Create a project folder. It should contain `vor.sh` file, this readme and some free space (one pdf with tmp files could take up to 400 Mb)
 - Install dependencies: `sudo apt install curl img2pdf` or similar
 - `chmod +x vor.sh`

USAGE:
`./vor.sh [name] [pages] [base_url]`
name - any name you wish. Should be unique. E. g. "phys_chem_1"
pages - number of pages. E. g. 222
base_url - must be https://e-lib.nsu.ru/reader/service/SecureViewer/Page/[params], where params are found in e-lib url. E. g. I wish to download the book from url https://e-lib.nsu.ru/reader/bookView.html?params=UmVzb3VyY2UtODU3/IXBhZ2UwMDIyNDAwMDA. Params are UmVzb3VyY2UtODU3/IXBhZ2UwMDIyNDAwMDA, so the base_url is https://e-lib.nsu.ru/reader/service/SecureViewer/Page/UmVzb3VyY2UtODU3/IXBhZ2UwMDIyNDAwMDA

EXAMPLE USAGE:
`./vor.sh phys_chem_1 222 https://e-lib.nsu.ru/reader/service/SecureViewer/Page/UmVzb3VyY2UtODU3/IXBhZ2UwMDIyNDAwMDA`

