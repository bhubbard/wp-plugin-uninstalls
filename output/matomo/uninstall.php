<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wp-piwik_global-piwik_mode');
delete_site_option('wp-piwik_global-piwik_mode');
delete_option('matomo_plugin_do_activation_redirect');
delete_site_option('matomo_plugin_do_activation_redirect');

