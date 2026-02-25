<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alttextlab_update_title');
delete_site_option('alttextlab_update_title');
delete_option('alttextlab_update_caption');
delete_site_option('alttextlab_update_caption');
delete_option('alttextlab_update_description');
delete_site_option('alttextlab_update_description');
delete_option('alttextlab_api_key');
delete_site_option('alttextlab_api_key');
delete_option('alttextlab_lang');
delete_site_option('alttextlab_lang');
delete_option('alttextlab_model_name');
delete_site_option('alttextlab_model_name');
delete_option('alttextlab_auto_generation_enabled');
delete_site_option('alttextlab_auto_generation_enabled');
delete_option('alttextlab_keywords');
delete_site_option('alttextlab_keywords');
delete_option('alttextlab_ecomm');
delete_site_option('alttextlab_ecomm');
delete_option('alttextlab_ecomm_use_title');
delete_site_option('alttextlab_ecomm_use_title');
delete_option('alttextlab_ecomm_use_color');
delete_site_option('alttextlab_ecomm_use_color');
delete_option('alttextlab_ecomm_use_material');
delete_site_option('alttextlab_ecomm_use_material');
delete_option('alttextlab_ecomm_color_field');
delete_site_option('alttextlab_ecomm_color_field');
delete_option('alttextlab_ecomm_material_field');
delete_site_option('alttextlab_ecomm_material_field');
delete_option('alttextlab_public');
delete_site_option('alttextlab_public');
delete_option('alttextlab_alt_prefix');
delete_site_option('alttextlab_alt_prefix');
delete_option('alttextlab_alt_suffix');
delete_site_option('alttextlab_alt_suffix');
delete_option('alttextlab_timeout');
delete_site_option('alttextlab_timeout');
delete_option('alttextlab_error_logs');
delete_site_option('alttextlab_error_logs');
delete_option('alttextlab_db_version');
delete_site_option('alttextlab_db_version');
delete_option('alttextlab_refresh_src_attr');
delete_site_option('alttextlab_refresh_src_attr');
delete_option('alttextlab_type_extensions');
delete_site_option('alttextlab_type_extensions');
delete_option('alttextlab_skip_filenotfound');
delete_site_option('alttextlab_skip_filenotfound');

// Delete Transients
delete_transient('alttextlab_insufficient_credits');
delete_site_transient('alttextlab_insufficient_credits');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttextlab_review_hidden_%', '_site_transient_alttextlab_review_hidden_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttextlab_bulk_select_generate_%', '_site_transient_alttextlab_bulk_select_generate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('alttextlab_setup_notice');
delete_site_transient('alttextlab_setup_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttextlab_bulk_select_generate_redirect_%', '_site_transient_alttextlab_bulk_select_generate_redirect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('alttextlab_try_later_notice');
delete_site_transient('alttextlab_try_later_notice');
delete_transient('alttextlab_api_key_invalid_notice');
delete_site_transient('alttextlab_api_key_invalid_notice');
delete_transient('bulk_generate_alt');
delete_site_transient('bulk_generate_alt');
delete_transient('alttextlab_enrich_post_content_success');
delete_site_transient('alttextlab_enrich_post_content_success');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttextlab_enric_post_generate_%', '_site_transient_alttextlab_enric_post_generate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttextlab_enric_post_generate__redirect_%', '_site_transient_alttextlab_enric_post_generate__redirect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cloudinary_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cloudinary_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cloudinary_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cloudinary_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );

