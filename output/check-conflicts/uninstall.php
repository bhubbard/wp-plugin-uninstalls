<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check_conflicts_settings');
delete_site_option('check_conflicts_settings');
delete_option('check_conflicts_backup');
delete_site_option('check_conflicts_backup');

