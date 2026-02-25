<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdaiw_app_id');
delete_site_option('cdaiw_app_id');
delete_option('cdaiw_app_secret');
delete_site_option('cdaiw_app_secret');
delete_option('cleandesk_app_id');
delete_site_option('cleandesk_app_id');
delete_option('cleandesk_app_secret');
delete_site_option('cleandesk_app_secret');

