-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codeQRCodeApplicationID', 'codeQRCodeWidgets', 'codeQRCodeAds', 'codeQRCodeAds1Name', 'codeQRCodeAds2', 'codeQRCodeAds2Name', 'codeQRCodeAds3', 'codeQRCodeAds3Name', 'codeQRCodeSingleWidgetID', 'codeQRCodePageWidgetID', 'codeQRCodePoweredBy', 'codeQRCodeSingleWidgetTitle', 'codeQRCodeShadow', 'codeQRCodeSingle', 'enableQROnSingle', 'qrCodeAlignSingle', 'qrMarginSingle', 'qrImgSizeSingle', 'codeQRCodePage', 'enableQROnPage', 'qrCodeAlignPage', 'qrMarginPage', 'qrImgSizePage');

