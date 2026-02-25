<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('joan_time_format');
delete_site_option('joan_time_format');
delete_option('joan_timezone');
delete_site_option('joan_timezone');
delete_option('joan_allow_timezone_selector');
delete_site_option('joan_allow_timezone_selector');
delete_option('joan_schedule_status');
delete_site_option('joan_schedule_status');
delete_option('joan_off_air_message');
delete_site_option('joan_off_air_message');
delete_option('joan_show_next_show');
delete_site_option('joan_show_next_show');
delete_option('joan_show_jock_image');
delete_site_option('joan_show_jock_image');
delete_option('joan_widget_max_width');
delete_site_option('joan_widget_max_width');
delete_option('joan_center_widget_title');
delete_site_option('joan_center_widget_title');
delete_option('joan_custom_widget_title');
delete_site_option('joan_custom_widget_title');
delete_option('joan_dark_mode');
delete_site_option('joan_dark_mode');
delete_option('joan_dark_mode_override');
delete_site_option('joan_dark_mode_override');
delete_option('joan_show_day_emoji');
delete_site_option('joan_show_day_emoji');
delete_option('joan_jock_field_label');
delete_site_option('joan_jock_field_label');
delete_option('joan_link_assignment');
delete_site_option('joan_link_assignment');
delete_option('joan_image_display_mode');
delete_site_option('joan_image_display_mode');
delete_option('joan_custom_css');
delete_site_option('joan_custom_css');
delete_option('joan_ads_enabled');
delete_site_option('joan_ads_enabled');
delete_option('joan_ads_refresh_interval');
delete_site_option('joan_ads_refresh_interval');
delete_option('joan_jock_only_mode');
delete_site_option('joan_jock_only_mode');
delete_option('joan_show_local_time');
delete_site_option('joan_show_local_time');
delete_option('joan_ad_clicks');
delete_site_option('joan_ad_clicks');
delete_option('joan_enable_language_switcher');
delete_site_option('joan_enable_language_switcher');
delete_option('joan_custom_languages');
delete_site_option('joan_custom_languages');
delete_option('joan_version');
delete_site_option('joan_version');
delete_option('joan_migration_handled');
delete_site_option('joan_migration_handled');
delete_option('joan_needs_migration');
delete_site_option('joan_needs_migration');
delete_option('joan_backup_reminder');
delete_site_option('joan_backup_reminder');
delete_option('joan_post_migration_notice_dismissed');
delete_site_option('joan_post_migration_notice_dismissed');
delete_option('joan_legacy_data_imported');
delete_site_option('joan_legacy_data_imported');
delete_option('joan_old_version_data');
delete_site_option('joan_old_version_data');
delete_option('joan_hide_activation_notice_609');
delete_site_option('joan_hide_activation_notice_609');

// Delete Transients
delete_transient('joan_available_languages');
delete_site_transient('joan_available_languages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'joan_premium_ad_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'joan_premium_ad_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'joan_premium_ad_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'joan_premium_ad_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'joan_vc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'joan_vc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'joan_vc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'joan_vc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'joan_elementor_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'joan_elementor_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'joan_elementor_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'joan_elementor_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'joan_vc_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'joan_vc_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'joan_vc_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'joan_vc_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'joan_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'joan_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'joan_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'joan_language' ) );

