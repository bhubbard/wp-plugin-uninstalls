<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_pls_simple_method');
delete_site_option('wp_pls_simple_method');
delete_option('wp_pls_root');
delete_site_option('wp_pls_root');
delete_option('wp_pls_load_external');
delete_site_option('wp_pls_load_external');
delete_option('wp_pls_process_gif_images');
delete_site_option('wp_pls_process_gif_images');
delete_option('wp_pls_db_version');
delete_site_option('wp_pls_db_version');
delete_option('wp_pls_version');
delete_site_option('wp_pls_version');
delete_option('wp_pls_found_root');
delete_site_option('wp_pls_found_root');
delete_option('wp_pls_has_updated_files');
delete_site_option('wp_pls_has_updated_files');
delete_option('wp_pls_has_gd');
delete_site_option('wp_pls_has_gd');
delete_option('wp_pls_cant_update');
delete_site_option('wp_pls_cant_update');

