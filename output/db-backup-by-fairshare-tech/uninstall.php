<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_backup_frequency');
delete_site_option('db_backup_frequency');
delete_option('db_backup_send_email');
delete_site_option('db_backup_send_email');
delete_option('db_backup_key');
delete_site_option('db_backup_key');
delete_option('db_backup_last_timestamp');
delete_site_option('db_backup_last_timestamp');

