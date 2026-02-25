<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartz_enable_zoom');
delete_site_option('smartz_enable_zoom');
delete_option('smartz_zoom_level');
delete_site_option('smartz_zoom_level');

