<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('powerkit_enabled_lazyload');
delete_site_option('powerkit_enabled_lazyload');
delete_option('theme_mods_flatsome-child');
delete_site_option('theme_mods_flatsome-child');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'et_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocs_shop_is_cached');
delete_site_option('woocs_shop_is_cached');
delete_option('FLYING_PRESS_CONFIG');
delete_site_option('FLYING_PRESS_CONFIG');
delete_option('siteground_optimizer_combine_css');
delete_site_option('siteground_optimizer_combine_css');
delete_option('wpassetcleanup_settings');
delete_site_option('wpassetcleanup_settings');
delete_option('fusion_options');
delete_site_option('fusion_options');
delete_option('asp_compatibility');
delete_site_option('asp_compatibility');
delete_option('rabbit_loader_user_options');
delete_site_option('rabbit_loader_user_options');
delete_option('rabbit_loader_wp_options');
delete_site_option('rabbit_loader_wp_options');
delete_option('gd_system_last_cache_flush');
delete_site_option('gd_system_last_cache_flush');
delete_option('rabbitloader_cdn_prefix');
delete_site_option('rabbitloader_cdn_prefix');
delete_option('rabbitloader_do_activation_redirect');
delete_site_option('rabbitloader_do_activation_redirect');

// Delete Transients
delete_transient('rabbitloader_trans_overview_data');
delete_site_transient('rabbitloader_trans_overview_data');
delete_transient('rabbitloader_knowlegebase_data');
delete_site_transient('rabbitloader_knowlegebase_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rl_survey_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rl_survey_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rl_survey_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rl_survey_dismissed' ) );

