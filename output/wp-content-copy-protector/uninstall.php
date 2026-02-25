<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccp_settings');
delete_site_option('wccp_settings');
delete_option('wccp_free_active_time');
delete_site_option('wccp_free_active_time');
delete_option('wccp_free_review_dismiss');
delete_site_option('wccp_free_review_dismiss');

