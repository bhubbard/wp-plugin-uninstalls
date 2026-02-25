<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tui_aifa_div');
delete_site_option('tui_aifa_div');
delete_option('tui_aifa_message');
delete_site_option('tui_aifa_message');
delete_option('tui_aifa_placemessagebefore');
delete_site_option('tui_aifa_placemessagebefore');
delete_option('tui_aifa_hasphp');
delete_site_option('tui_aifa_hasphp');
delete_option('tui_aifa_addcss');
delete_site_option('tui_aifa_addcss');

