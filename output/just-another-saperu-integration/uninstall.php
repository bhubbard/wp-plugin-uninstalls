<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sape_user');
delete_site_option('sape_user');
delete_option('sape_part_is_client');
delete_site_option('sape_part_is_client');
delete_option('sape_part_is_context');
delete_site_option('sape_part_is_context');
delete_option('sape_part_is_articles');
delete_site_option('sape_part_is_articles');
delete_option('sape_login');
delete_site_option('sape_login');
delete_option('sape_password');
delete_site_option('sape_password');
delete_option('sape_widget_class');
delete_site_option('sape_widget_class');

// Delete Transients
delete_transient('sape.get_sites_EXT');
delete_site_transient('sape.get_sites_EXT');

