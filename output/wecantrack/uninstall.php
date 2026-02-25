<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wecantrack_version');
delete_site_option('wecantrack_version');
delete_option('wecantrack_api_key');
delete_site_option('wecantrack_api_key');
delete_option('wecantrack_custom_redirect_html');
delete_site_option('wecantrack_custom_redirect_html');
delete_option('wecantrack_redirect_options');
delete_site_option('wecantrack_redirect_options');
delete_option('wecantrack_website_options');
delete_site_option('wecantrack_website_options');
delete_option('wecantrack_referrer_cookie_status');
delete_site_option('wecantrack_referrer_cookie_status');
delete_option('wecantrack_storage');
delete_site_option('wecantrack_storage');
delete_option('wecantrack_plugin_status');
delete_site_option('wecantrack_plugin_status');
delete_option('wecantrack_session_enabler');
delete_site_option('wecantrack_session_enabler');
delete_option('wecantrack_snippet');
delete_site_option('wecantrack_snippet');
delete_option('wecantrack_redirect_status');
delete_site_option('wecantrack_redirect_status');
delete_option('wecantrack_fetch_expiration');
delete_site_option('wecantrack_fetch_expiration');
delete_option('wecantrack_snippet_version');
delete_site_option('wecantrack_snippet_version');
delete_option('wecantrack_domain_patterns');
delete_site_option('wecantrack_domain_patterns');

// Delete Transients
delete_transient('wecantrack_lock_cache_refresh');
delete_site_transient('wecantrack_lock_cache_refresh');

