<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wf_static_page_rules');
delete_site_option('_wf_static_page_rules');
delete_option('_wf_dynamic_page_rules');
delete_site_option('_wf_dynamic_page_rules');
delete_option('wf_pages_cache_duration');
delete_site_option('wf_pages_cache_duration');
delete_option('_wf_api_token_version');
delete_site_option('_wf_api_token_version');
delete_option('_wf_api_token');
delete_site_option('_wf_api_token');

// Delete Transients
delete_transient('_wf_site_data');
delete_site_transient('_wf_site_data');
delete_transient('wf_site_cached');
delete_site_transient('wf_site_cached');

