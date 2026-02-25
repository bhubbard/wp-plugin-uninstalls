<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lorinsight_sync_settings');
delete_site_option('lorinsight_sync_settings');
delete_option('shopapper_dashboard_token');
delete_site_option('shopapper_dashboard_token');

