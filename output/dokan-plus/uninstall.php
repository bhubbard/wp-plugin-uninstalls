<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dvih-notice-dismissed');
delete_site_option('dvih-notice-dismissed');
delete_option('dokan_general');
delete_site_option('dokan_general');

