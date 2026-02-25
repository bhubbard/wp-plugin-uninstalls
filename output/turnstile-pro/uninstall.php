<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cftpx_site_key');
delete_site_option('cftpx_site_key');
delete_option('cftpx_secret_key');
delete_site_option('cftpx_secret_key');
delete_option('cftpx_visible_mode');
delete_site_option('cftpx_visible_mode');
delete_option('cftpx_enabled_forms');
delete_site_option('cftpx_enabled_forms');
delete_option('cftpx_custom_error');
delete_site_option('cftpx_custom_error');
delete_option('cftpx_ip_whitelist');
delete_site_option('cftpx_ip_whitelist');

