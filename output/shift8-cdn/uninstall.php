<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_cdn_url');
delete_site_option('shift8_cdn_url');
delete_option('shift8_cdn_api');
delete_site_option('shift8_cdn_api');
delete_option('shift8_cdn_prefix');
delete_site_option('shift8_cdn_prefix');
delete_option('shift8_cdn_minify_html');
delete_site_option('shift8_cdn_minify_html');
delete_option('shift8_cdn_minify_html_skip_logged_in');
delete_site_option('shift8_cdn_minify_html_skip_logged_in');
delete_option('shift8_cdn_minify_html_preserve_comments');
delete_site_option('shift8_cdn_minify_html_preserve_comments');
delete_option('shift8_cdn_minify_css');
delete_site_option('shift8_cdn_minify_css');
delete_option('shift8_cdn_minify_js');
delete_site_option('shift8_cdn_minify_js');
delete_option('shift8_cdn_enabled');
delete_site_option('shift8_cdn_enabled');
delete_option('shift8_cdn_css');
delete_site_option('shift8_cdn_css');
delete_option('shift8_cdn_js');
delete_site_option('shift8_cdn_js');
delete_option('shift8_cdn_media');
delete_site_option('shift8_cdn_media');
delete_option('shift8_cdn_reject_files');
delete_site_option('shift8_cdn_reject_files');
delete_option('shift8_cdn_email');
delete_site_option('shift8_cdn_email');

// Delete Transients
delete_transient('shift8_cdn_minify_map');
delete_site_transient('shift8_cdn_minify_map');

// Clear Cron Jobs
wp_clear_scheduled_hook('shift8_cdn_cron_hook');

