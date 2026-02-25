<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alt_magic_private_site');
delete_site_option('alt_magic_private_site');
delete_option('alt_magic_api_key');
delete_site_option('alt_magic_api_key');
delete_option('alt_magic_user_id');
delete_site_option('alt_magic_user_id');
delete_option('alt_magic_account_active');
delete_site_option('alt_magic_account_active');
delete_option('alt_magic_max_concurrency');
delete_site_option('alt_magic_max_concurrency');
delete_option('alt_magic_auto_generate');
delete_site_option('alt_magic_auto_generate');
delete_option('alt_magic_alt_gen_type');
delete_site_option('alt_magic_alt_gen_type');
delete_option('alt_magic_language');
delete_site_option('alt_magic_language');
delete_option('alt_magic_use_for_title');
delete_site_option('alt_magic_use_for_title');
delete_option('alt_magic_use_for_caption');
delete_site_option('alt_magic_use_for_caption');
delete_option('alt_magic_use_for_description');
delete_site_option('alt_magic_use_for_description');
delete_option('alt_magic_prepend_string');
delete_site_option('alt_magic_prepend_string');
delete_option('alt_magic_append_string');
delete_site_option('alt_magic_append_string');
delete_option('alt_magic_extra_prompt');
delete_site_option('alt_magic_extra_prompt');
delete_option('alt_magic_use_seo_keywords');
delete_site_option('alt_magic_use_seo_keywords');
delete_option('alt_magic_use_post_title');
delete_site_option('alt_magic_use_post_title');
delete_option('alt_magic_refresh_alt_text');
delete_site_option('alt_magic_refresh_alt_text');
delete_option('alt_magic_woocommerce_use_product_name');
delete_site_option('alt_magic_woocommerce_use_product_name');
delete_option('alt_magic_auto_rename_on_upload');
delete_site_option('alt_magic_auto_rename_on_upload');
delete_option('alt_magic_enable_redirections');
delete_site_option('alt_magic_enable_redirections');
delete_option('alt_magic_rename_use_seo_keywords');
delete_site_option('alt_magic_rename_use_seo_keywords');
delete_option('alt_magic_rename_use_post_title');
delete_site_option('alt_magic_rename_use_post_title');
delete_option('alt_magic_rename_use_woocommerce_product_name');
delete_site_option('alt_magic_rename_use_woocommerce_product_name');
delete_option('alt_magic_update_posts');
delete_site_option('alt_magic_update_posts');
delete_option('alt_magic_update_excerpts');
delete_site_option('alt_magic_update_excerpts');
delete_option('alt_magic_update_postmeta');
delete_site_option('alt_magic_update_postmeta');
delete_option('alt_magic_update_guid');
delete_site_option('alt_magic_update_guid');
delete_option('alt_magic_rename_language');
delete_site_option('alt_magic_rename_language');
delete_option('altm_debug_mode');
delete_site_option('altm_debug_mode');

// Delete Transients
delete_transient('_alt_magic_activation_redirect');
delete_site_transient('_alt_magic_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_altm_original_image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_altm_original_image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_altm_original_image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_altm_original_image_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_altm_rename_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_altm_rename_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_altm_rename_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_altm_rename_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_altm_rename_refs_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_altm_rename_refs_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_altm_rename_refs_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_altm_rename_refs_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_altm_original_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_altm_original_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_altm_original_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_altm_original_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );

