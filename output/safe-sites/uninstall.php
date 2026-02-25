<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safe_sites_force_ssl');
delete_site_option('safe_sites_force_ssl');
delete_option('auto_update_core_major');
delete_site_option('auto_update_core_major');
delete_option('safe_sites_virustotal_api_key');
delete_site_option('safe_sites_virustotal_api_key');
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('safe_sites-demo-block-data');
delete_site_transient('safe_sites-demo-block-data');
delete_transient('safesites_notices');
delete_site_transient('safesites_notices');
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');

