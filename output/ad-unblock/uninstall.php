<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ad_unblock_verification_code');
delete_site_option('ad_unblock_verification_code');
delete_option('ad_unblock_custom_api_endpoint');
delete_site_option('ad_unblock_custom_api_endpoint');
delete_option('ad_unblock_page_rules');
delete_site_option('ad_unblock_page_rules');

// Delete Transients
delete_transient('ad_unblock_script_sources');
delete_site_transient('ad_unblock_script_sources');

