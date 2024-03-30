#  OCR with PDFKit in Terminal

[![MIT License](https://img.shields.io/github/license/mson0129/OCR-with-PDFKit-in-Terminal)](https://www.mit.edu/~amini/LICENSE.md)
![Repo Size](https://img.shields.io/github/repo-size/mson0129/OCR-with-PDFKit-in-Terminal)
![Last Commit](https://img.shields.io/github/last-commit/mson0129/OCR-with-PDFKit-in-Terminal)
![Release Version](https://img.shields.io/github/v/release/mson0129/OCR-with-PDFKit-in-Terminal)
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fmson0129%2FOCR-with-PDFKit-in-Terminal&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

![macOS](https://img.shields.io/badge/macOS-13-blue)

애플 실리콘에서 PDF 문서의 OCR 처리를 해주는 CLI 툴입니다.

PDFKit의 saveTextFromOCROption을 사용하여 단순 이미지 PDF를 OCR 처리하여 저장합니다.

## 사용 방법 (Usage)

OCR_with_PDFKit_in_Terminal /path/of/a/pdf/to/read_and_write.pdf

또는 (OR)

OCR_with_PDFKit_in_Terminal /path/of/a/pdf/to/read.pdf /path/of/a/pdf/to/write.pdf

# 참조 (References)

* [PDFKit](https://developer.apple.com/documentation/pdfkit)
    * PDFKit입니다.

* [saveTextFromOCROption](https://developer.apple.com/documentation/pdfkit/pdfdocumentwriteoption/4042775-savetextfromocroption)
    * PDFKit의 PDFDocument 쓰기 옵션 중 하나인 saveTextFromOCROption입니다.
    * 해당 옵션을 true로 설정하여 PDF 문서를 저장할 경우, OCR 처리 후에 PDF 문서를 저장합니다. 
    * 문서 크기에 따라 저장하는데 상당한 시간이 소요될 수 있습니다.
