<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shc_enable_headers');
delete_site_option('shc_enable_headers');
delete_option('shc_cache_duration');
delete_site_option('shc_cache_duration');
delete_option('shc_csp_policy');
delete_site_option('shc_csp_policy');
delete_option('shc_enable_hsts');
delete_site_option('shc_enable_hsts');
delete_option('shc_enable_xss_protection');
delete_site_option('shc_enable_xss_protection');
delete_option('shc_enable_frame_options');
delete_site_option('shc_enable_frame_options');
delete_option('shc_enable_content_type');
delete_site_option('shc_enable_content_type');
delete_option('shc_referrer_policy');
delete_site_option('shc_referrer_policy');
delete_option('shc_permissions_policy');
delete_site_option('shc_permissions_policy');

