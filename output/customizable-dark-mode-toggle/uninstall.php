<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmtf_dark_bg_color');
delete_site_option('dmtf_dark_bg_color');
delete_option('dmtf_dark_text_color');
delete_site_option('dmtf_dark_text_color');
delete_option('dmtf_toggle_button_bg');
delete_site_option('dmtf_toggle_button_bg');
delete_option('dmtf_toggle_button_text');
delete_site_option('dmtf_toggle_button_text');
delete_option('dmtf_custom_css');
delete_site_option('dmtf_custom_css');

