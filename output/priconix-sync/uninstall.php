<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('priconix_sync_api_key');
delete_site_option('priconix_sync_api_key');
delete_option('priconix_sync_publishable_key');
delete_site_option('priconix_sync_publishable_key');
delete_option('priconix_sync_success_url');
delete_site_option('priconix_sync_success_url');
delete_option('priconix_sync_cancel_url');
delete_site_option('priconix_sync_cancel_url');

