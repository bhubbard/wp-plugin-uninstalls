<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('automatic_post_date_filler_meta');
delete_site_option('automatic_post_date_filler_meta');
delete_option('automatic_post_date_filler_settings');
delete_site_option('automatic_post_date_filler_settings');
delete_option('automatic_post_date_filler');
delete_site_option('automatic_post_date_filler');

