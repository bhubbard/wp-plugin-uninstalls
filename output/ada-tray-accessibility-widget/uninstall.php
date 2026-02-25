<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ADATRAY_settings');
delete_site_option('ADATRAY_settings');
delete_option('adatray_settings');
delete_site_option('adatray_settings');

