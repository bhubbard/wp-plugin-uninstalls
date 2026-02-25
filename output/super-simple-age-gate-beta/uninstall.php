<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcAGGT_gate_active');
delete_site_option('bcAGGT_gate_active');
delete_option('bcAGGT_page_cookie');
delete_site_option('bcAGGT_page_cookie');
delete_option('bcAGGT_page_privacy');
delete_site_option('bcAGGT_page_privacy');
delete_option('bcAGGT_page_disclaimer');
delete_site_option('bcAGGT_page_disclaimer');
delete_option('bcAGGT_gate_cookietime');
delete_site_option('bcAGGT_gate_cookietime');
delete_option('bcAGGT_gate_age');
delete_site_option('bcAGGT_gate_age');
delete_option('bcAGGT_gate_cookienotice');
delete_site_option('bcAGGT_gate_cookienotice');
delete_option('bcAGGT_gate_gtype');
delete_site_option('bcAGGT_gate_gtype');
delete_option('bcAGGT_gate_theme');
delete_site_option('bcAGGT_gate_theme');
delete_option('bcAGGT_gate_css');
delete_site_option('bcAGGT_gate_css');
delete_option('bcAGGT_gate_logo');
delete_site_option('bcAGGT_gate_logo');
delete_option('bcAGGT_gate_message');
delete_site_option('bcAGGT_gate_message');
delete_option('bcAGGT_gate_message_footer');
delete_site_option('bcAGGT_gate_message_footer');
delete_option('bcAGGT_gate_background_image');
delete_site_option('bcAGGT_gate_background_image');

