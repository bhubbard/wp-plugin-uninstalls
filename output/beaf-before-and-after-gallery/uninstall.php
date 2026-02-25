<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bafg_migrated');
delete_site_option('bafg_migrated');
delete_option('bafg_watermark');
delete_site_option('bafg_watermark');
delete_option('bafg_tools');
delete_site_option('bafg_tools');
delete_option('beaf_settings');
delete_site_option('beaf_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bafg_pro_activated');
delete_site_option('bafg_pro_activated');
delete_option('bafg_promo__schudle_start_from');
delete_site_option('bafg_promo__schudle_start_from');
delete_option('bafg_sidebar_banner__schedule_option');
delete_site_option('bafg_sidebar_banner__schedule_option');
delete_option('tf_promo_notice_exists');
delete_site_option('tf_promo_notice_exists');
delete_option('bafg_promo_notice_woo_exists');
delete_site_option('bafg_promo_notice_woo_exists');
delete_option('tf_promo_widget_exists');
delete_site_option('tf_promo_widget_exists');
delete_option('bafg_dashboard_widget_dismissed');
delete_site_option('bafg_dashboard_widget_dismissed');
delete_option('bafg_dismiss_admin_notice');
delete_site_option('bafg_dismiss_admin_notice');
delete_option('bafg_dismiss_post_notice');
delete_site_option('bafg_dismiss_post_notice');
delete_option('bafg_sidebar_banner_notice_exists');
delete_site_option('bafg_sidebar_banner_notice_exists');
delete_option('bafg_installation_date');
delete_site_option('bafg_installation_date');
delete_option('bafg_review_notice_status');
delete_site_option('bafg_review_notice_status');
delete_option('beaf_pro_license_status');
delete_site_option('beaf_pro_license_status');
delete_option('bafg_filter_gallery_style_alignment');
delete_site_option('bafg_filter_gallery_style_alignment');
delete_option('bafg_filter_gallery_style_border');
delete_site_option('bafg_filter_gallery_style_border');
delete_option('bafg_filter_gallery_style_text_color');
delete_site_option('bafg_filter_gallery_style_text_color');
delete_option('bafg_filter_gallery_style_bg_color');
delete_site_option('bafg_filter_gallery_style_bg_color');
delete_option('bafg_filter_gallery_style_text_h_color');
delete_site_option('bafg_filter_gallery_style_text_h_color');
delete_option('bafg_filter_gallery_style_bg_h_color');
delete_site_option('bafg_filter_gallery_style_bg_h_color');
delete_option('bafg_filter_gallery_style_padding_tb');
delete_site_option('bafg_filter_gallery_style_padding_tb');
delete_option('bafg_filter_gallery_style_padding_lr');
delete_site_option('bafg_filter_gallery_style_padding_lr');

// Clear Cron Jobs
wp_clear_scheduled_hook('bafg_sidebar_banner__schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'beaf_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'beaf_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'beaf_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'beaf_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bafg_woo_new_feature_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bafg_woo_new_feature_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bafg_woo_new_feature_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bafg_woo_new_feature_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tf_hotels_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tf_hotels_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tf_hotels_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tf_hotels_opt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'beaf_fomo_first_visit_time_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'beaf_fomo_first_visit_time_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'beaf_fomo_first_visit_time_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'beaf_fomo_first_visit_time_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bafg_show_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bafg_show_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bafg_show_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bafg_show_title' ) );

