<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_optimizer_enable_function');
delete_site_option('seo_optimizer_enable_function');
delete_option('seo_optimizer_attribute_option');
delete_site_option('seo_optimizer_attribute_option');
delete_option('seo_optimizer_preserve_existing_attributes');
delete_site_option('seo_optimizer_preserve_existing_attributes');
delete_option('seo_optimizer_custom_template');
delete_site_option('seo_optimizer_custom_template');
delete_option('seo_optimizer_replace_hyphens');
delete_site_option('seo_optimizer_replace_hyphens');
delete_option('seo_optimizer_replace_underscores');
delete_site_option('seo_optimizer_replace_underscores');
delete_option('seo_optimizer_replace_periods');
delete_site_option('seo_optimizer_replace_periods');
delete_option('seo_optimizer_replace_commas');
delete_site_option('seo_optimizer_replace_commas');
delete_option('seo_optimizer_replace_numbers');
delete_site_option('seo_optimizer_replace_numbers');
delete_option('seo_optimizer_text_case_option');
delete_site_option('seo_optimizer_text_case_option');
delete_option('seo_optimizer_modify_featured_image');
delete_site_option('seo_optimizer_modify_featured_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

