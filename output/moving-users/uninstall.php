<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moving_users_export_files');
delete_site_option('moving_users_export_files');
delete_option('moving_users_number_files');
delete_site_option('moving_users_number_files');
delete_option('moving_users_mail_send');
delete_site_option('moving_users_mail_send');

