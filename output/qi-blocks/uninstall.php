<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qi_blocks_setup_wizard');
delete_site_option('qi_blocks_setup_wizard');
delete_option('qi_blocks_global_settings_typography');
delete_site_option('qi_blocks_global_settings_typography');
delete_option('qi_blocks_global_settings_typography_styles');
delete_site_option('qi_blocks_global_settings_typography_styles');
delete_option('qi_blocks_global_settings_typography_apply_to');
delete_site_option('qi_blocks_global_settings_typography_apply_to');
delete_option('qi_blocks_global_styles');
delete_site_option('qi_blocks_global_styles');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('qi_blocks_cropped_images');
delete_site_option('qi_blocks_cropped_images');
delete_option('qi_blocks_custom_templates_flag');
delete_site_option('qi_blocks_custom_templates_flag');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');

// Delete Transients
delete_transient('qi_blocks_check_theme_gutenberg_style');
delete_site_transient('qi_blocks_check_theme_gutenberg_style');
delete_transient('_qi_blocks_get_the_block_template_html ');
delete_site_transient('_qi_blocks_get_the_block_template_html ');
delete_transient('_qi_blocks_get_the_block_template_html');
delete_site_transient('_qi_blocks_get_the_block_template_html');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

