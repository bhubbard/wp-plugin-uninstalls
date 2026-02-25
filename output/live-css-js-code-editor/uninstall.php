<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('live_code_css_field');
delete_site_option('live_code_css_field');
delete_option('live_code_js_field');
delete_site_option('live_code_js_field');
delete_option('live_code_header_field');
delete_site_option('live_code_header_field');
delete_option('live_code_footer_field');
delete_site_option('live_code_footer_field');
delete_option('live_code_admin_css_field');
delete_site_option('live_code_admin_css_field');
delete_option('live_code_admin_js_field');
delete_site_option('live_code_admin_js_field');

