<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yrm-read-more-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yrm-hide-media-buttons');
delete_site_option('yrm-hide-media-buttons');
delete_option('yrm-hide-google-fonts');
delete_site_option('yrm-hide-google-fonts');
delete_option('yrm_redirect');
delete_site_option('yrm_redirect');
delete_option('yrm-user-roles');
delete_site_option('yrm-user-roles');
delete_option('yrm-hid-find-and-replace-menu');
delete_site_option('yrm-hid-find-and-replace-menu');
delete_option('yrm-hid-accordion-menu');
delete_site_option('yrm-hid-accordion-menu');
delete_option('EXPM_PREV_VERSION');
delete_site_option('EXPM_PREV_VERSION');
delete_option('EXPM_VERSION');
delete_site_option('EXPM_VERSION');
delete_option('YrmUsageDays');
delete_site_option('YrmUsageDays');
delete_option('YrmInstallDate');
delete_site_option('YrmInstallDate');
delete_option('YrmShowNextTime');
delete_site_option('YrmShowNextTime');
delete_option('yrm-delete-data');
delete_site_option('yrm-delete-data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yrm-license-status-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('YrmDontShowReviewNotice');
delete_site_option('YrmDontShowReviewNotice');

