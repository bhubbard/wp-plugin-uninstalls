<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nertworks_site_wide_ssl_redirect_type');
delete_site_option('nertworks_site_wide_ssl_redirect_type');
delete_option('nertworks_site_wide_ssl_dashboard_option');
delete_site_option('nertworks_site_wide_ssl_dashboard_option');
delete_option('nertworks_site_wide_ssl_website_option');
delete_site_option('nertworks_site_wide_ssl_website_option');
delete_option('nertworks_sidewidessl_plugin_do_activation_redirect_popup');
delete_site_option('nertworks_sidewidessl_plugin_do_activation_redirect_popup');
delete_option('nertworks_site_wide_ssl_dashboard_enabled');
delete_site_option('nertworks_site_wide_ssl_dashboard_enabled');
delete_option('nertworks_site_wide_ssl_website_enabled');
delete_site_option('nertworks_site_wide_ssl_website_enabled');

