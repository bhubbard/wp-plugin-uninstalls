<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('omcpa-plugin-notice-dismissed');
delete_site_option('omcpa-plugin-notice-dismissed');

