<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_url_title');
delete_site_option('custom_url_title');
delete_option('custom_login_logo_url');
delete_site_option('custom_login_logo_url');
delete_option('wp_flat_admin_custom_logo_path');
delete_site_option('wp_flat_admin_custom_logo_path');

