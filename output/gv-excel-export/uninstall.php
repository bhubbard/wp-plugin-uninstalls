<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gv-excel-export_option');
delete_site_option('gv-excel-export_option');
delete_option('gravityformsaddon_gravityview_app_settings');
delete_site_option('gravityformsaddon_gravityview_app_settings');

