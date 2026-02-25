<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optBackupAllWM');
delete_site_option('optBackupAllWM');
delete_option('nwmCurrentVersion');
delete_site_option('nwmCurrentVersion');
delete_option('nwmCurrentType');
delete_site_option('nwmCurrentType');
delete_option('optAutoWM');
delete_site_option('optAutoWM');
delete_option('optUploadWM');
delete_site_option('optUploadWM');
delete_option('optActiveTxtWM');
delete_site_option('optActiveTxtWM');
delete_option('optActiveImgWM');
delete_site_option('optActiveImgWM');
delete_option('optQuality');
delete_site_option('optQuality');
delete_option('optTypeGIF');
delete_site_option('optTypeGIF');
delete_option('optTypeJPEG');
delete_site_option('optTypeJPEG');
delete_option('optTypePNG');
delete_site_option('optTypePNG');
delete_option('optTypeWEBP');
delete_site_option('optTypeWEBP');
delete_option('optDisableCopy');
delete_site_option('optDisableCopy');
delete_option('optTextWM');
delete_site_option('optTextWM');
delete_option('optFontWM');
delete_site_option('optFontWM');
delete_option('optSizeWM');
delete_site_option('optSizeWM');
delete_option('optAlphaWM');
delete_site_option('optAlphaWM');
delete_option('optColorWM');
delete_site_option('optColorWM');
delete_option('optLB_Mosaic');
delete_site_option('optLB_Mosaic');
delete_option('optCustom_X');
delete_site_option('optCustom_X');
delete_option('optCustom_Y');
delete_site_option('optCustom_Y');
delete_option('optMosaicCross');
delete_site_option('optMosaicCross');
delete_option('optPosTxtWM');
delete_site_option('optPosTxtWM');
delete_option('optAlignWM_X');
delete_site_option('optAlignWM_X');
delete_option('optAlignWM_Y');
delete_site_option('optAlignWM_Y');
delete_option('optDegreeWM');
delete_site_option('optDegreeWM');
delete_option('optImageWM');
delete_site_option('optImageWM');
delete_option('optOpacWM');
delete_site_option('optOpacWM');
delete_option('optGreyscaleWM');
delete_site_option('optGreyscaleWM');
delete_option('optNegateWM');
delete_site_option('optNegateWM');
delete_option('optPosImgWM');
delete_site_option('optPosImgWM');
delete_option('optAlignImgWM_X');
delete_site_option('optAlignImgWM_X');
delete_option('optAlignImgWM_Y');
delete_site_option('optAlignImgWM_Y');
delete_option('optFitWM_Width');
delete_site_option('optFitWM_Width');
delete_option('optFitWM_Height');
delete_site_option('optFitWM_Height');
delete_option('optKeepRatio');
delete_site_option('optKeepRatio');
delete_option('optMargin_X');
delete_site_option('optMargin_X');
delete_option('optMargin_Y');
delete_site_option('optMargin_Y');
delete_option('optDegreeImgWM');
delete_site_option('optDegreeImgWM');
delete_option('optBackupImgWM');
delete_site_option('optBackupImgWM');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

