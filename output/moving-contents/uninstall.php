<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moving_contents_number_files');
delete_site_option('moving_contents_number_files');
delete_option('moving_contents_mail_send');
delete_site_option('moving_contents_mail_send');
delete_option('moving_contents_export_files');
delete_site_option('moving_contents_export_files');
delete_option('moving_contents_max_execution_time');
delete_site_option('moving_contents_max_execution_time');

