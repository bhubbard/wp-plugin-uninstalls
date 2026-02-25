<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erm-settings');
delete_site_option('erm-settings');
delete_option('erm_is_first_time');
delete_site_option('erm_is_first_time');
delete_option('erm_custom_design');
delete_site_option('erm_custom_design');
delete_option('erm_text_color');
delete_site_option('erm_text_color');
delete_option('erm_button_text_size');
delete_site_option('erm_button_text_size');
delete_option('erm_background_color');
delete_site_option('erm_background_color');
delete_option('erm_border');
delete_site_option('erm_border');
delete_option('erm_padding');
delete_site_option('erm_padding');
delete_option('erm_margin');
delete_site_option('erm_margin');
delete_option('erm_button_text');
delete_site_option('erm_button_text');
delete_option('erm_is_activated');
delete_site_option('erm_is_activated');

