<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddykit_settings');
delete_site_option('buddykit_settings');
delete_option('buddykit_db_version');
delete_site_option('buddykit_db_version');

