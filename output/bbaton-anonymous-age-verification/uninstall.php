<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbaa_scroll_to_show');
delete_site_option('bbaa_scroll_to_show');
delete_option('bbaa_client_id');
delete_site_option('bbaa_client_id');
delete_option('background_image');
delete_site_option('background_image');
delete_option('bbaa_client_secret');
delete_site_option('bbaa_client_secret');
delete_option('bbaa_redirect_url');
delete_site_option('bbaa_redirect_url');
delete_option('bbaa_lock_pages');
delete_site_option('bbaa_lock_pages');
delete_option('bbaa_exit_url');
delete_site_option('bbaa_exit_url');
delete_option('bbaa_site_url');
delete_site_option('bbaa_site_url');
delete_option('bbaa_headings');
delete_site_option('bbaa_headings');

