<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_header_content_bytemantra');
delete_site_option('custom_header_content_bytemantra');
delete_option('custom_footer_content_bytemantra');
delete_site_option('custom_footer_content_bytemantra');
delete_option('custom_header_content_status_bytemantra');
delete_site_option('custom_header_content_status_bytemantra');
delete_option('custom_footer_content_status_bytemantra');
delete_site_option('custom_footer_content_status_bytemantra');
delete_option('custom_header_content_priority_bytemantra');
delete_site_option('custom_header_content_priority_bytemantra');
delete_option('custom_footer_content_priority_bytemantra');
delete_site_option('custom_footer_content_priority_bytemantra');

