<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moving_media_library_number_files');
delete_site_option('moving_media_library_number_files');
delete_option('moving_media_library_mail_send');
delete_site_option('moving_media_library_mail_send');
delete_option('moving_media_library_export_files');
delete_site_option('moving_media_library_export_files');

