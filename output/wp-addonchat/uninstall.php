<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addonchat_room_id');
delete_site_option('addonchat_room_id');
delete_option('addonchat_use_ras');
delete_site_option('addonchat_use_ras');
delete_option('addonchat_enable_guest');
delete_site_option('addonchat_enable_guest');
delete_option('addonchat_default_height');
delete_site_option('addonchat_default_height');
delete_option('addonchat_default_width');
delete_site_option('addonchat_default_width');
delete_option('addonchat_display_newwindow');
delete_site_option('addonchat_display_newwindow');
delete_option('addonchat_server_id');
delete_site_option('addonchat_server_id');
delete_option('addonchat_password');
delete_site_option('addonchat_password');

