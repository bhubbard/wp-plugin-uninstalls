<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webgains_ads_widget_settings');
delete_site_option('webgains_ads_widget_settings');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

