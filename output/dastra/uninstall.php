<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('workspace_id');
delete_site_option('workspace_id');
delete_option('widget_id');
delete_site_option('widget_id');
delete_option('public_key');
delete_site_option('public_key');
delete_option('track_user');
delete_site_option('track_user');

