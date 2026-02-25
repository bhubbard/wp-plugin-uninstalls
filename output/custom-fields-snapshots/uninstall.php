<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_fields_snapshots_event_logging');
delete_site_option('custom_fields_snapshots_event_logging');
delete_option('custom_fields_snapshots_delete_plugin_data');
delete_site_option('custom_fields_snapshots_delete_plugin_data');

