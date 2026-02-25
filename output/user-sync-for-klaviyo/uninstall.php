<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_sync_for_klaviyo_settings');
delete_site_option('user_sync_for_klaviyo_settings');

