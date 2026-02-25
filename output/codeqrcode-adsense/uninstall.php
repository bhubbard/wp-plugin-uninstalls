<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codeQRCodeApplicationID');
delete_site_option('codeQRCodeApplicationID');
delete_option('codeQRCodeWidgets');
delete_site_option('codeQRCodeWidgets');
delete_option('codeQRCodeAds');
delete_site_option('codeQRCodeAds');
delete_option('codeQRCodeAds1Name');
delete_site_option('codeQRCodeAds1Name');
delete_option('codeQRCodeAds2');
delete_site_option('codeQRCodeAds2');
delete_option('codeQRCodeAds2Name');
delete_site_option('codeQRCodeAds2Name');
delete_option('codeQRCodeAds3');
delete_site_option('codeQRCodeAds3');
delete_option('codeQRCodeAds3Name');
delete_site_option('codeQRCodeAds3Name');
delete_option('codeQRCodeSingleWidgetID');
delete_site_option('codeQRCodeSingleWidgetID');
delete_option('codeQRCodePageWidgetID');
delete_site_option('codeQRCodePageWidgetID');
delete_option('codeQRCodePoweredBy');
delete_site_option('codeQRCodePoweredBy');
delete_option('codeQRCodeSingleWidgetTitle');
delete_site_option('codeQRCodeSingleWidgetTitle');
delete_option('codeQRCodeShadow');
delete_site_option('codeQRCodeShadow');
delete_option('codeQRCodeSingle');
delete_site_option('codeQRCodeSingle');
delete_option('enableQROnSingle');
delete_site_option('enableQROnSingle');
delete_option('qrCodeAlignSingle');
delete_site_option('qrCodeAlignSingle');
delete_option('qrMarginSingle');
delete_site_option('qrMarginSingle');
delete_option('qrImgSizeSingle');
delete_site_option('qrImgSizeSingle');
delete_option('codeQRCodePage');
delete_site_option('codeQRCodePage');
delete_option('enableQROnPage');
delete_site_option('enableQROnPage');
delete_option('qrCodeAlignPage');
delete_site_option('qrCodeAlignPage');
delete_option('qrMarginPage');
delete_site_option('qrMarginPage');
delete_option('qrImgSizePage');
delete_site_option('qrImgSizePage');

