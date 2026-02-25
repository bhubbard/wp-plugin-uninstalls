<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_dragdrop_button_label');
delete_site_option('easy_dragdrop_button_label');
delete_option('easy_dragdrop_file_types_allowed');
delete_site_option('easy_dragdrop_file_types_allowed');
delete_option('easy_dragdrop_max_file_size');
delete_site_option('easy_dragdrop_max_file_size');
delete_option('easy_dragdrop_file_type_error');
delete_site_option('easy_dragdrop_file_type_error');
delete_option('easy_dragdrop_file_size_error');
delete_site_option('easy_dragdrop_file_size_error');
delete_option('easy_dragdrop_max_files');
delete_site_option('easy_dragdrop_max_files');

