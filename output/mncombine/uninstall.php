<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mn_comine_assets');
delete_site_option('mn_comine_assets');
delete_option('mn_compression_engine');
delete_site_option('mn_compression_engine');
delete_option('mn_compile_mode');
delete_site_option('mn_compile_mode');
delete_option('mn_force_combine');
delete_site_option('mn_force_combine');
delete_option('mn_css_compression');
delete_site_option('mn_css_compression');
delete_option('mn_exclude_css_regex');
delete_site_option('mn_exclude_css_regex');
delete_option('mn_exclude_js_regex');
delete_site_option('mn_exclude_js_regex');

