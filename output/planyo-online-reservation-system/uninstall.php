<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_id');
delete_site_option('site_id');
delete_option('extra_search_fields');
delete_site_option('extra_search_fields');
delete_option('sort_fields');
delete_site_option('sort_fields');
delete_option('planyo_language');
delete_site_option('planyo_language');
delete_option('default_mode');
delete_site_option('default_mode');
delete_option('seo_friendly');
delete_site_option('seo_friendly');
delete_option('use_login');
delete_site_option('use_login');
delete_option('login_integration_code');
delete_site_option('login_integration_code');
delete_option('resource_ordering');
delete_site_option('resource_ordering');
delete_option('js_framework');
delete_site_option('js_framework');

