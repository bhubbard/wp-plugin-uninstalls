<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('superpwa_apple_icons_uploaded');
delete_site_option('superpwa_apple_icons_uploaded');
delete_option('superpwa_apple_icons_settings');
delete_site_option('superpwa_apple_icons_settings');
delete_option('superpwa_caching_strategies_settings');
delete_site_option('superpwa_caching_strategies_settings');
delete_option('superpwa_pull_to_refresh_settings');
delete_site_option('superpwa_pull_to_refresh_settings');
delete_option('superpwa_utm_tracking_settings');
delete_site_option('superpwa_utm_tracking_settings');
delete_option('superpwa_active_addons');
delete_site_option('superpwa_active_addons');
delete_option('superpwa_hide_newsletter');
delete_site_option('superpwa_hide_newsletter');
delete_option('superpwa_pro_upgrade_license');
delete_site_option('superpwa_pro_upgrade_license');
delete_option('superpwa_settings');
delete_site_option('superpwa_settings');
delete_option('superpwa_version');
delete_site_option('superpwa_version');
delete_option('superpwa_active_sites');
delete_site_option('superpwa_active_sites');
delete_option('superpwa_wpml_settings');
delete_site_option('superpwa_wpml_settings');
delete_option('superpwa_wp_multilang_settings');
delete_site_option('superpwa_wp_multilang_settings');
delete_option('superpwa_polylang_settings');
delete_site_option('superpwa_polylang_settings');
delete_option('superpwa_translatepress_settings');
delete_site_option('superpwa_translatepress_settings');

// Delete Transients
delete_transient('superpwa_pre_cache_post_ids');
delete_site_transient('superpwa_pre_cache_post_ids');
delete_transient('superpwa_admin_notice_activation');
delete_site_transient('superpwa_admin_notice_activation');
delete_transient('superpwa_network_admin_notice_activation');
delete_site_transient('superpwa_network_admin_notice_activation');
delete_transient('superpwa_admin_notice_upgrade_complete');
delete_site_transient('superpwa_admin_notice_upgrade_complete');

