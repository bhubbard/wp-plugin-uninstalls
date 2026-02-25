<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adrm_comments_module_enabled');
delete_site_option('adrm_comments_module_enabled');
delete_option('wp_statuses');
delete_site_option('wp_statuses');
delete_option('adrm_statuses');
delete_site_option('adrm_statuses');
delete_option('adrm_global_settings');
delete_site_option('adrm_global_settings');
delete_option('ADRM_DB_VERSION');
delete_site_option('ADRM_DB_VERSION');

