<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenance_notice_options');
delete_site_option('maintenance_notice_options');
delete_option('maintenance_notice_activated_time');
delete_site_option('maintenance_notice_activated_time');

// Delete Transients
delete_transient('maintenance-notice-admin-notice');
delete_site_transient('maintenance-notice-admin-notice');

