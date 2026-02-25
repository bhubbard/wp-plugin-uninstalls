<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickpush_appID');
delete_site_option('quickpush_appID');
delete_option('quickpush_restApi');
delete_site_option('quickpush_restApi');
delete_option('quickpush_everyone');
delete_site_option('quickpush_everyone');
delete_option('quickpush_pushSegments');
delete_site_option('quickpush_pushSegments');
delete_option('quickpush_appName');
delete_site_option('quickpush_appName');
delete_option('quickpush_enableSound');
delete_site_option('quickpush_enableSound');
delete_option('quickpush_autoSendTitle');
delete_site_option('quickpush_autoSendTitle');
delete_option('quickpush_saveLastMessage');
delete_site_option('quickpush_saveLastMessage');

