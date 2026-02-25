<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leafletmapsmarker_options');
delete_site_option('leafletmapsmarker_options');
delete_option('leafletmapsmarker_version_pro');
delete_site_option('leafletmapsmarker_version_pro');
delete_option('leafletmapsmarkerpro_license_key_trial');
delete_site_option('leafletmapsmarkerpro_license_key_trial');
delete_option('leafletmapsmarker_version');
delete_site_option('leafletmapsmarker_version');
delete_option('leafletmapsmarker_update_info');
delete_site_option('leafletmapsmarker_update_info');
delete_option('leafletmapsmarker_version_before_update');
delete_site_option('leafletmapsmarker_version_before_update');
delete_option('jquery-colorbox_settings');
delete_site_option('jquery-colorbox_settings');
delete_option('cforms_settings');
delete_site_option('cforms_settings');
delete_option('bwp_minify_general');
delete_site_option('bwp_minify_general');
delete_option('wp_minify');
delete_site_option('wp_minify');
delete_option('wpseo_social');
delete_site_option('wpseo_social');
delete_option('aj_enabled');
delete_site_option('aj_enabled');
delete_option('aj_exclusions');
delete_site_option('aj_exclusions');
delete_option('fastvelocity_min_disable_js_merge');
delete_site_option('fastvelocity_min_disable_js_merge');
delete_option('fastvelocity_min_ignore');
delete_site_option('fastvelocity_min_ignore');
delete_option('leafletmapsmarker_redirect');
delete_site_option('leafletmapsmarker_redirect');
delete_option('leafletmapsmarker_editor');
delete_site_option('leafletmapsmarker_editor');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('leafletmapsmarker_version_before_update');
delete_site_transient('leafletmapsmarker_version_before_update');
delete_transient('leafletmapsmarker_install_update_cache_v399');
delete_site_transient('leafletmapsmarker_install_update_cache_v399');
delete_transient('leafletmapsmarker_install_update_cache_v3122');
delete_site_transient('leafletmapsmarker_install_update_cache_v3122');
delete_transient('leafletmapsmarker_tinymce_custom_css');
delete_site_transient('leafletmapsmarker_tinymce_custom_css');

// Clear Cron Jobs
wp_clear_scheduled_hook('lmm_wp_session_garbage_collection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lmm_retirement_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lmm_retirement_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lmm_retirement_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lmm_retirement_notice_dismissed' ) );

