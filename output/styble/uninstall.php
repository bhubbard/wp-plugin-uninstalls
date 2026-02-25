<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('styble_version');
delete_site_option('styble_version');
delete_option('styble_first_version');
delete_site_option('styble_first_version');
delete_option('styble_activation_date');
delete_site_option('styble_activation_date');
delete_option('styble_db_version');
delete_site_option('styble_db_version');

