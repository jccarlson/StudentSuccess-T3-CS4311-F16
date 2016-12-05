function downloadDialogXlsx() {
    var confirmed = confirm('Do you wish to download this file?');
    if (confirmed) {
        window.open('../downloadableFiles/dummyreport.xlsx');
    } else {
        alert('download cancelled');
    }
}

function downloadDialogPdf() {
    var confirmed = confirm('Do you wish to download this file?');
    if (confirmed) {
        window.open('../downloadableFiles/dummypdf.pdf');
    } else {
        alert('download cancelled');
    }
}
