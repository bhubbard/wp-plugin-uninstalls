<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swgpreviewBackgroundColor');
delete_site_option('swgpreviewBackgroundColor');
delete_option('swgpBtnTextAlign');
delete_site_option('swgpBtnTextAlign');
delete_option('swgpBtnFontSize');
delete_site_option('swgpBtnFontSize');
delete_option('swgpBtnBackgroundColor');
delete_site_option('swgpBtnBackgroundColor');
delete_option('swgpBtnFontColor');
delete_site_option('swgpBtnFontColor');
delete_option('swgPreviewTextFontColor');
delete_site_option('swgPreviewTextFontColor');
delete_option('swgp_upload_image');
delete_site_option('swgp_upload_image');
delete_option('swgpreviewPadding');
delete_site_option('swgpreviewPadding');
delete_option('swgp_follow');
delete_site_option('swgp_follow');
delete_option('swgPreviewTextTitleLabel');
delete_site_option('swgPreviewTextTitleLabel');
delete_option('swgPreviewTextTagLabel');
delete_site_option('swgPreviewTextTagLabel');
delete_option('swgPreviewTextDescriptionLabel');
delete_site_option('swgPreviewTextDescriptionLabel');
delete_option('swgPreviewTextPadding');
delete_site_option('swgPreviewTextPadding');
delete_option('swgPreviewTextFontSize');
delete_site_option('swgPreviewTextFontSize');
delete_option('swgPreviewTextTitleAlign');
delete_site_option('swgPreviewTextTitleAlign');
delete_option('swgPreviewTextTitleWeight');
delete_site_option('swgPreviewTextTitleWeight');
delete_option('swgpBtnTitle');
delete_site_option('swgpBtnTitle');
delete_option('swgPreviewTextFontWeight');
delete_site_option('swgPreviewTextFontWeight');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tax_meta_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swg_info_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swg_info_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swg_info_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swg_info_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swg_info_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swg_info_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swg_info_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swg_info_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swg_info_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swg_info_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swg_info_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swg_info_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swg_info_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swg_info_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swg_info_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swg_info_no_follow' ) );

