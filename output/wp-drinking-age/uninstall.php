<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dagw_bootstrap');
delete_site_option('dagw_bootstrap');
delete_option('dagw_logo_url');
delete_site_option('dagw_logo_url');
delete_option('dagw_message');
delete_site_option('dagw_message');
delete_option('dagw_redirect');
delete_site_option('dagw_redirect');
delete_option('dagw_deny_message');
delete_site_option('dagw_deny_message');
delete_option('dagw_deny_timeout');
delete_site_option('dagw_deny_timeout');
delete_option('dagw_gate_font_color');
delete_site_option('dagw_gate_font_color');
delete_option('dagw_gate_background_color');
delete_site_option('dagw_gate_background_color');
delete_option('dagw_gate_border_radius');
delete_site_option('dagw_gate_border_radius');
delete_option('dagw_gate_border_style');
delete_site_option('dagw_gate_border_style');
delete_option('dagw_gate_border_color');
delete_site_option('dagw_gate_border_color');
delete_option('dagw_gate_border_width');
delete_site_option('dagw_gate_border_width');
delete_option('dagw_link_to_terms');
delete_site_option('dagw_link_to_terms');
delete_option('dagw_link_to_privacy');
delete_site_option('dagw_link_to_privacy');

