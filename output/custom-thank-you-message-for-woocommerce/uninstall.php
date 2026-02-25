<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wctym_custom_message');
delete_site_option('wctym_custom_message');
delete_option('wctym_message_position');
delete_site_option('wctym_message_position');
delete_option('wctym_bg_color');
delete_site_option('wctym_bg_color');
delete_option('wctym_text_color');
delete_site_option('wctym_text_color');
delete_option('wctym_border_radius');
delete_site_option('wctym_border_radius');

