<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_slug_check_dismissed_time');
delete_site_option('woocommerce_slug_check_dismissed_time');
delete_option('dapfforwc_filters');
delete_site_option('dapfforwc_filters');
delete_option('dapfforwc_options');
delete_site_option('dapfforwc_options');
delete_option('dapfforwc_style_options');
delete_site_option('dapfforwc_style_options');
delete_option('dapfforwc_template_options');
delete_site_option('dapfforwc_template_options');
delete_option('dapfforwc_advance_options');
delete_site_option('dapfforwc_advance_options');
delete_option('dapfforwc_seo_permalinks_options');
delete_site_option('dapfforwc_seo_permalinks_options');
delete_option('dapfforwc_install_time');
delete_site_option('dapfforwc_install_time');
delete_option('dapfforwc_review_already_done');
delete_site_option('dapfforwc_review_already_done');
delete_option('dapfforwc_remind_me_later');
delete_site_option('dapfforwc_remind_me_later');
delete_option('dapfforwcpro_license_key');
delete_site_option('dapfforwcpro_license_key');
delete_option('dapfforwcpro_license_status');
delete_site_option('dapfforwcpro_license_status');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('onepaquc_analytics_last_sent');
delete_site_option('onepaquc_analytics_last_sent');
delete_option('dapfforwc_license_key');
delete_site_option('dapfforwc_license_key');

// Delete Transients
delete_transient('dapfforwcpro_admin_notice');
delete_site_transient('dapfforwcpro_admin_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dapfforwc_filtered_ids_%', '_site_transient_dapfforwc_filtered_ids_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dapfforwc_ny_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dapfforwc_ny_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dapfforwc_ny_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dapfforwc_ny_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ct_builder_shortcodes' ) );

