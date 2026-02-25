<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('starbox_button');
delete_site_option('starbox_button');
delete_option('starbox_overlay');
delete_site_option('starbox_overlay');
delete_option('starbox_class');
delete_site_option('starbox_class');
delete_option('starbox_ghost');
delete_site_option('starbox_ghost');
delete_option('starbox_version');
delete_site_option('starbox_version');
delete_option('starbox_image');
delete_site_option('starbox_image');

