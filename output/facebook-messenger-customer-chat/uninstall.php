<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbmcc_page_types');
delete_site_option('fbmcc_page_types');
delete_option('fbmcc_pageID');
delete_site_option('fbmcc_pageID');
delete_option('fbmcc_locale');
delete_site_option('fbmcc_locale');
delete_option('fbmcc_install_ts');
delete_site_option('fbmcc_install_ts');
delete_option('fbmcc_last_alert_check_ts');
delete_site_option('fbmcc_last_alert_check_ts');
delete_option('fbmcc_cached_alert_check_response');
delete_site_option('fbmcc_cached_alert_check_response');
delete_option('fbmcc_notice');
delete_site_option('fbmcc_notice');
delete_option('fbmcc_generatedCode');
delete_site_option('fbmcc_generatedCode');
delete_option('fbmcc_enabled');
delete_site_option('fbmcc_enabled');

