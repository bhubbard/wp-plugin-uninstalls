<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsite_post_status_notifications_settings');
delete_site_option('wpsite_post_status_notifications_settings');

