<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gotrgf_succesfull_migration_complete');
delete_site_option('gotrgf_succesfull_migration_complete');

