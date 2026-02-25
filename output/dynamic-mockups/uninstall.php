<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynamic_mockups_api_key');
delete_site_option('dynamic_mockups_api_key');
delete_option('dynamic_mockups_editor_website_key');
delete_site_option('dynamic_mockups_editor_website_key');
delete_option('dynamic_mockups_onboarding_completed');
delete_site_option('dynamic_mockups_onboarding_completed');
delete_option('dynamic_mockups_last_sync_datetime');
delete_site_option('dynamic_mockups_last_sync_datetime');
delete_option('dynamic_mockups_hide_product_personalization');
delete_site_option('dynamic_mockups_hide_product_personalization');
delete_option('dynamic_mockups_personalization_button_text');
delete_site_option('dynamic_mockups_personalization_button_text');
delete_option('dynamic_mockups_enable_color_options');
delete_site_option('dynamic_mockups_enable_color_options');
delete_option('dynamic_mockups_one_color_per_smart_object');
delete_site_option('dynamic_mockups_one_color_per_smart_object');
delete_option('dynamic_mockups_show_color_picker');
delete_site_option('dynamic_mockups_show_color_picker');
delete_option('dynamic_mockups_show_color_presets');
delete_site_option('dynamic_mockups_show_color_presets');
delete_option('dynamic_mockups_show_transform_controls');
delete_site_option('dynamic_mockups_show_transform_controls');
delete_option('dynamic_mockups_export_mockups_button_text');
delete_site_option('dynamic_mockups_export_mockups_button_text');

// Delete Transients
delete_transient('dynamic_mockups_verify_and_sync');
delete_site_transient('dynamic_mockups_verify_and_sync');
delete_transient('dynamic_mockups_auto_sync_status');
delete_site_transient('dynamic_mockups_auto_sync_status');
delete_transient('dynamic_mockups_activation_redirect');
delete_site_transient('dynamic_mockups_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_product_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_product_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_product_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_product_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_mockup_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_inputs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_inputs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_inputs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_inputs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_personalize_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_personalize_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_personalize_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_personalize_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_custom_collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_custom_collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_custom_collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_custom_collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dynamic_mockups_personalization_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dynamic_mockups_personalization_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dynamic_mockups_personalization_template_group_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dynamic_mockups_personalization_template_group_uuid' ) );

