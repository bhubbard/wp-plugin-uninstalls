<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('greenshift_smartcode_openaiapikey');
delete_site_option('greenshift_smartcode_openaiapikey');
delete_option('greenshift_smartcode_claudeapikey');
delete_site_option('greenshift_smartcode_claudeapikey');
delete_option('greenshift_smartcode_deepseekapikey');
delete_site_option('greenshift_smartcode_deepseekapikey');
delete_option('greenshift_smartcode_geminiapikey');
delete_site_option('greenshift_smartcode_geminiapikey');
delete_option('greenshift_smartcode_openaiapimodel');
delete_site_option('greenshift_smartcode_openaiapimodel');
delete_option('gspb_global_settings');
delete_site_option('gspb_global_settings');

