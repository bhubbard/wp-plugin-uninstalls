<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcvip_display_style_migrated');
delete_site_option('wcvip_display_style_migrated');
delete_option('wcvip_display_style');
delete_site_option('wcvip_display_style');
delete_option('wcvip_deactivation_feedback_log');
delete_site_option('wcvip_deactivation_feedback_log');
delete_option('wcvip_lazy_load');
delete_site_option('wcvip_lazy_load');
delete_option('wcvip_show_badge');
delete_site_option('wcvip_show_badge');
delete_option('wcvip_image_limit');
delete_site_option('wcvip_image_limit');
delete_option('wcvip_use_attribute_sections');
delete_site_option('wcvip_use_attribute_sections');
delete_option('wcvip_out_of_stock_action');
delete_site_option('wcvip_out_of_stock_action');
delete_option('wcvip_attribute_styles');
delete_site_option('wcvip_attribute_styles');
delete_option('wcvip_display_in_dropdown');
delete_site_option('wcvip_display_in_dropdown');
delete_option('wcvip_display_thumbnails');
delete_site_option('wcvip_display_thumbnails');
delete_option('wcvip_cdn_enabled');
delete_site_option('wcvip_cdn_enabled');
delete_option('wcvip_cdn_url');
delete_site_option('wcvip_cdn_url');
delete_option('wcvip_enable_shop');
delete_site_option('wcvip_enable_shop');
delete_option('wcvip_buttons_orientation');
delete_site_option('wcvip_buttons_orientation');
delete_option('wcvip_security_logging_enabled');
delete_site_option('wcvip_security_logging_enabled');
delete_option('wcvip_security_logging_database');
delete_site_option('wcvip_security_logging_database');
delete_option('wcvip_security_log_retention_days');
delete_site_option('wcvip_security_log_retention_days');
delete_option('wcvip_delete_data_on_uninstall');
delete_site_option('wcvip_delete_data_on_uninstall');

// Delete Transients
delete_transient('wcvip_activated');
delete_site_transient('wcvip_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcvip_clean_security_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcvip_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcvip_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcvip_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcvip_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcvip_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcvip_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcvip_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcvip_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcvip_designer_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcvip_designer_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcvip_designer_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcvip_designer_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcvip_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcvip_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcvip_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcvip_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcvip_attribute_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcvip_attribute_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcvip_attribute_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcvip_attribute_styles' ) );

