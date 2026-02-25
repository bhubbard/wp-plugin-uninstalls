<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hooks_reference_use_cache');
delete_site_option('hooks_reference_use_cache');

// Delete Transients
delete_transient('hooks_discovery_data');
delete_site_transient('hooks_discovery_data');
delete_transient('hooks_discovery_plugins');
delete_site_transient('hooks_discovery_plugins');
delete_transient('hooks_reference_cache');
delete_site_transient('hooks_reference_cache');

