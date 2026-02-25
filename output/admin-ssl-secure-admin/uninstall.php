<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_ssl_use_ssl');
delete_site_option('admin_ssl_use_ssl');
delete_option('admin_ssl_use_shared');
delete_site_option('admin_ssl_use_shared');
delete_option('admin_ssl_shared_url');
delete_site_option('admin_ssl_shared_url');
delete_option('admin_ssl_additional_urls');
delete_site_option('admin_ssl_additional_urls');
delete_option('admin_ssl_secure_users_only');
delete_site_option('admin_ssl_secure_users_only');
delete_option('admin_ssl_config_parent');
delete_site_option('admin_ssl_config_parent');
delete_option('admin_ssl_https_key');
delete_site_option('admin_ssl_https_key');
delete_option('admin_ssl_https_value');
delete_site_option('admin_ssl_https_value');

