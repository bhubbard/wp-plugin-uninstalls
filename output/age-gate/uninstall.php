<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('age_gate_legacy_css');
delete_site_option('age_gate_legacy_css');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('age_gate_version');
delete_site_option('age_gate_version');
delete_option('wp_age_gate_version');
delete_site_option('wp_age_gate_version');
delete_option('age_gate_updated_from');
delete_site_option('age_gate_updated_from');
delete_option('age_gate_theme_css');
delete_site_option('age_gate_theme_css');
delete_option('wp_age_gate_restrictions');
delete_site_option('wp_age_gate_restrictions');
delete_option('wp_age_gate_messages');
delete_site_option('wp_age_gate_messages');
delete_option('wp_age_gate_validation_messages');
delete_site_option('wp_age_gate_validation_messages');
delete_option('wp_age_gate_appearance');
delete_site_option('wp_age_gate_appearance');
delete_option('wp_age_gate_advanced');
delete_site_option('wp_age_gate_advanced');
delete_option('wp_age_gate_access');
delete_site_option('wp_age_gate_access');
delete_option('age_gate_dev');
delete_site_option('age_gate_dev');
delete_option('age_gate_encrypt_key');
delete_site_option('age_gate_encrypt_key');
delete_option('age_gate_encrypt_secret');
delete_site_option('age_gate_encrypt_secret');

// Clear Cron Jobs
wp_clear_scheduled_hook('age_gate/cron_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

