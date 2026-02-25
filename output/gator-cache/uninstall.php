<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('wp_mobile_disable');
delete_site_option('wp_mobile_disable');
delete_option('wordpress-https_ssl_host');
delete_site_option('wordpress-https_ssl_host');

