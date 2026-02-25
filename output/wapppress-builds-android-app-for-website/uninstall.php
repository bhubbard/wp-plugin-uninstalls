<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapppress_last_build');
delete_site_option('wapppress_last_build');
delete_option('wapppress_settings');
delete_site_option('wapppress_settings');
delete_option('wapppress_license');
delete_site_option('wapppress_license');
delete_option('WAPPPRESS_SETTINGS');
delete_site_option('WAPPPRESS_SETTINGS');
delete_option('INSTANTAPPY_active_sites');
delete_site_option('INSTANTAPPY_active_sites');
delete_option('INSTANTAPPY_version');
delete_site_option('INSTANTAPPY_version');
delete_option('INSTANTAPPY_settings');
delete_site_option('INSTANTAPPY_settings');
delete_option('instantappy_pwa_manifest_version');
delete_site_option('instantappy_pwa_manifest_version');

// Delete Transients
delete_transient('wapppress_trial_notice');
delete_site_transient('wapppress_trial_notice');
delete_transient('INSTANTAPPY_notice_activation');
delete_site_transient('INSTANTAPPY_notice_activation');
delete_transient('INSTANTAPPY_network_admin_notice_activation');
delete_site_transient('INSTANTAPPY_network_admin_notice_activation');

