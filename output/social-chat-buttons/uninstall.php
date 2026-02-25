<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpscb_advanced_settings');
delete_site_option('wpscb_advanced_settings');
delete_option('wpscb_contacts');
delete_site_option('wpscb_contacts');
delete_option('wpscb_settings');
delete_site_option('wpscb_settings');

