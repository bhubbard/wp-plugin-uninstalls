<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MOIP_MAX_ATTACHMENTS_PER_SCAN');
delete_site_option('MOIP_MAX_ATTACHMENTS_PER_SCAN');
delete_option('moip_image_type');
delete_site_option('moip_image_type');
delete_option('moip_out_file_type');
delete_site_option('moip_out_file_type');

// Delete Transients
delete_transient('mapping_of_image_posts_filename');
delete_site_transient('mapping_of_image_posts_filename');
delete_transient('lines_affected');
delete_site_transient('lines_affected');

