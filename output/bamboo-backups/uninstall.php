<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bamboo_backups_time');
delete_site_option('bamboo_backups_time');
delete_option('bamboo_backups_history');
delete_site_option('bamboo_backups_history');
delete_option('bamboo_backups_last_run');
delete_site_option('bamboo_backups_last_run');

