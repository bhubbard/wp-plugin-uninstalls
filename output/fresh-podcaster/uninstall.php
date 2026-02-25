<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fp_custom_menu_mode');
delete_site_option('fp_custom_menu_mode');
delete_option('fresh_podcaster_css');
delete_site_option('fresh_podcaster_css');
delete_option('fl-podcaster-custom-style');
delete_site_option('fl-podcaster-custom-style');

