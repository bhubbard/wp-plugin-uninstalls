<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scoby_analytics_version');
delete_site_option('scoby_analytics_version');
delete_option('scoby_analytics_options');
delete_site_option('scoby_analytics_options');

// Delete Transients
delete_transient('scoby_analytics_check_config');
delete_site_transient('scoby_analytics_check_config');
delete_transient('scoby_analytics_flush_cache_notice');
delete_site_transient('scoby_analytics_flush_cache_notice');
delete_transient('scoby_analytics_use_client_integration');
delete_site_transient('scoby_analytics_use_client_integration');

