<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbns_message_input');
delete_site_option('cbns_message_input');
delete_option('cbns_custom_css_input');
delete_site_option('cbns_custom_css_input');
delete_option('cbns_display_attribute');
delete_site_option('cbns_display_attribute');
delete_option('cbns_margin');
delete_site_option('cbns_margin');
delete_option('cbns_font_size');
delete_site_option('cbns_font_size');
delete_option('cbns_text_color');
delete_site_option('cbns_text_color');

