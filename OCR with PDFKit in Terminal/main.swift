//
//  main.swift
//  OCR with PDFKit in Terminal
//
//  Created by Michael Son on 3/31/24.
//

import PDFKit

enum CustomErrors: Error {
    case noPathError
    case unexpectedError
}

extension CustomErrors: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noPathError:
            return NSLocalizedString(
                "PDF 파일의 경로가 지정되지 않았습니다.",
                comment: ""
            )
        case .unexpectedError:
            return NSLocalizedString(
                "알 수 없는 오류가 발생했습니다.",
                comment: ""
            )
        }
    }
}

let arguments = CommandLine.arguments

if arguments.count > 1 {
    let pdfURLToRead = URL(fileURLWithPath: arguments[1])
    let pdfDocument = PDFDocument(url: pdfURLToRead)
    
    if let doc = pdfDocument {
        let pdfURLToSave: String
        if arguments.count > 2 {
            pdfURLToSave = arguments[2]
        } else {
            pdfURLToSave = arguments[1]
        }
        
        doc.write(toFile: pdfURLToSave, withOptions: [PDFDocumentWriteOption.saveTextFromOCROption: true])
        print("Job's done.")
    } else {
        throw CustomErrors.unexpectedError
    }
} else {
    throw CustomErrors.noPathError
}
