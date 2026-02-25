<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_404_redirect_status');
delete_site_option('custom_404_redirect_status');
delete_option('custom_404_redirect_type');
delete_site_option('custom_404_redirect_type');
delete_option('custom_404_redirect_page_id');
delete_site_option('custom_404_redirect_page_id');

