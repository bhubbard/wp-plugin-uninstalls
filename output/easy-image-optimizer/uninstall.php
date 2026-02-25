<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyio_exactdn_domain');
delete_site_option('easyio_exactdn_domain');
delete_option('easyio_exactdn_verified');
delete_site_option('easyio_exactdn_verified');
delete_option('easyio_exactdn_validation');
delete_site_option('easyio_exactdn_validation');
delete_option('easyio_exactdn_verify_method');
delete_site_option('easyio_exactdn_verify_method');
delete_option('easyio_exactdn');
delete_site_option('easyio_exactdn');
delete_option('easyio_lazy_load');
delete_site_option('easyio_lazy_load');
delete_option('easyio_debug');
delete_site_option('easyio_debug');
delete_option('easyio_version');
delete_site_option('easyio_version');
delete_option('easyio_metadata_remove');
delete_site_option('easyio_metadata_remove');
delete_option('easyio_enable_help');
delete_site_option('easyio_enable_help');
delete_option('easyio_enable_help_notice');
delete_site_option('easyio_enable_help_notice');
delete_option('ewww_image_optimizer_exactdn');
delete_site_option('ewww_image_optimizer_exactdn');
delete_option('exactdn_all_the_things');
delete_site_option('exactdn_all_the_things');
delete_option('exactdn_lossy');
delete_site_option('exactdn_lossy');
delete_option('exactdn_hidpi');
delete_site_option('exactdn_hidpi');
delete_option('ewww_image_optimizer_lazy_load');
delete_site_option('ewww_image_optimizer_lazy_load');
delete_option('ewww_image_optimizer_webp_for_cdn');
delete_site_option('ewww_image_optimizer_webp_for_cdn');
delete_option('exactdn_prevent_db_queries');
delete_site_option('exactdn_prevent_db_queries');
delete_option('exactdn_never_been_active');
delete_site_option('exactdn_never_been_active');
delete_option('easyio_exactdn_checkin');
delete_site_option('easyio_exactdn_checkin');
delete_option('easyio_exactdn_local_domain');
delete_site_option('easyio_exactdn_local_domain');
delete_option('easyio_exactdn_plan_id');
delete_site_option('easyio_exactdn_plan_id');
delete_option('easyio_exactdn_failures');
delete_site_option('easyio_exactdn_failures');
delete_option('jetpack_boost_status_image-cdn');
delete_site_option('jetpack_boost_status_image-cdn');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

