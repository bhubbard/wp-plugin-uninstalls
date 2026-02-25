<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga_tag_manager_id');
delete_site_option('ga_tag_manager_id');
delete_option('ga_use_tag_manager');
delete_site_option('ga_use_tag_manager');
delete_option('ga_tracking_code');
delete_site_option('ga_tracking_code');
delete_option('ga_anonymize_ip');
delete_site_option('ga_anonymize_ip');
delete_option('track_logged_in');
delete_site_option('track_logged_in');

