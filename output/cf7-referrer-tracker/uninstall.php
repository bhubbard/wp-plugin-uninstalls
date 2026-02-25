<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7rt_selected_http_headers');
delete_site_option('cf7rt_selected_http_headers');
delete_option('include_http_header_in_admin_email');
delete_site_option('include_http_header_in_admin_email');

