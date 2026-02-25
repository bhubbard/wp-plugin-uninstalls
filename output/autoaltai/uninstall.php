<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoaltai_api_key');
delete_site_option('autoaltai_api_key');
delete_option('autoaltai_langauge');
delete_site_option('autoaltai_langauge');
delete_option('autoaltai_force_lang');
delete_site_option('autoaltai_force_lang');
delete_option('autoaltai_writing_style');
delete_site_option('autoaltai_writing_style');
delete_option('autoaltai_generate_title');
delete_site_option('autoaltai_generate_title');
delete_option('autoaltai_generate_caption');
delete_site_option('autoaltai_generate_caption');
delete_option('autoaltai_generate_description');
delete_site_option('autoaltai_generate_description');
delete_option('autoaltai_alt_text_min');
delete_site_option('autoaltai_alt_text_min');
delete_option('autoaltai_alt_text_max');
delete_site_option('autoaltai_alt_text_max');
delete_option('autoaltai_alt_prefix');
delete_site_option('autoaltai_alt_prefix');
delete_option('autoaltai_alt_suffix');
delete_site_option('autoaltai_alt_suffix');
delete_option('autoaltai_upload_enabled');
delete_site_option('autoaltai_upload_enabled');
delete_option('autoaltai_allowed_imagetype');
delete_site_option('autoaltai_allowed_imagetype');
delete_option('autoaltai_skip_filenotfound');
delete_site_option('autoaltai_skip_filenotfound');
delete_option('autoaltai_seo_keywords');
delete_site_option('autoaltai_seo_keywords');
delete_option('autoaltai_post_title');
delete_site_option('autoaltai_post_title');
delete_option('autoaltai_chatgpt_prompt');
delete_site_option('autoaltai_chatgpt_prompt');
delete_option('autoaltai_woo_productname');
delete_site_option('autoaltai_woo_productname');
delete_option('autoaltai_woo_title');
delete_site_option('autoaltai_woo_title');
delete_option('autoaltai_is_public');
delete_site_option('autoaltai_is_public');
delete_option('autoaltai_generate_metadata');
delete_site_option('autoaltai_generate_metadata');
delete_option('autoaltai_timeout');
delete_site_option('autoaltai_timeout');
delete_option('autoaltai_refresh_img_src');
delete_site_option('autoaltai_refresh_img_src');
delete_option('autoaltai_log_errors');
delete_site_option('autoaltai_log_errors');
delete_option('autoaltai_db_version');
delete_site_option('autoaltai_db_version');
delete_option('wpseo_taxonomy_meta');
delete_site_option('wpseo_taxonomy_meta');

// Delete Transients
delete_transient('autoaltai_show_setup_notice');
delete_site_transient('autoaltai_show_setup_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_autoaltai_bulk_select_generate_%', '_site_transient_autoaltai_bulk_select_generate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_additional_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_additional_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_additional_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_additional_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seopress_analysis_target_kw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );

