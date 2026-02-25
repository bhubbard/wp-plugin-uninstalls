<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmfs_settings');
delete_site_option('tmfs_settings');

// Delete Transients
delete_transient('tmfs_webhook_status');
delete_site_transient('tmfs_webhook_status');

