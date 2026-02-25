<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fx_email_log_db_version');
delete_site_option('fx_email_log_db_version');
delete_option('fx-email-log_welcome');
delete_site_option('fx-email-log_welcome');

