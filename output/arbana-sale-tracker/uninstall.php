<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arbana_activation_sync_notice');
delete_site_option('arbana_activation_sync_notice');
delete_option('arbana_api_key');
delete_site_option('arbana_api_key');

