<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flex_ssl_enabled');
delete_site_option('flex_ssl_enabled');
delete_option('flex_ssl_force_https');
delete_site_option('flex_ssl_force_https');
delete_option('flex_ssl_update_urls');
delete_site_option('flex_ssl_update_urls');
delete_option('flex_ssl_mixed_content_fixer');
delete_site_option('flex_ssl_mixed_content_fixer');
delete_option('flex_ssl_hsts');
delete_site_option('flex_ssl_hsts');
delete_option('flex_ssl_security_headers');
delete_site_option('flex_ssl_security_headers');
delete_option('flex_ssl_ssl_status');
delete_site_option('flex_ssl_ssl_status');
delete_option('flex_ssl_redirect_type');
delete_site_option('flex_ssl_redirect_type');
delete_option('flex_ssl_flex_ssl_woo_safe_mode');
delete_site_option('flex_ssl_flex_ssl_woo_safe_mode');
delete_option('flex_ssl_logs');
delete_site_option('flex_ssl_logs');

