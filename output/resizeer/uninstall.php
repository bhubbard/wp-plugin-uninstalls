<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('resizeer_process_on_upload');
delete_site_option('resizeer_process_on_upload');
delete_option('resizeer_max_width');
delete_site_option('resizeer_max_width');
delete_option('resizeer_max_height');
delete_site_option('resizeer_max_height');
delete_option('resizeer_quality');
delete_site_option('resizeer_quality');
delete_option('resizeer_process_uploads_automatically');
delete_site_option('resizeer_process_uploads_automatically');

