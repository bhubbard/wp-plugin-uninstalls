<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atai_woo_marketplace');
delete_site_option('atai_woo_marketplace');
delete_option('atai_api_key');
delete_site_option('atai_api_key');
delete_option('atai_network_api_key');
delete_site_option('atai_network_api_key');
delete_option('atai_network_all_settings');
delete_site_option('atai_network_all_settings');
delete_option('atai_lang');
delete_site_option('atai_lang');
delete_option('atai_model_name');
delete_site_option('atai_model_name');
delete_option('atai_force_lang');
delete_site_option('atai_force_lang');
delete_option('atai_update_title');
delete_site_option('atai_update_title');
delete_option('atai_update_caption');
delete_site_option('atai_update_caption');
delete_option('atai_update_description');
delete_site_option('atai_update_description');
delete_option('atai_enabled');
delete_site_option('atai_enabled');
delete_option('atai_skip_filenotfound');
delete_site_option('atai_skip_filenotfound');
delete_option('atai_keywords');
delete_site_option('atai_keywords');
delete_option('atai_keywords_title');
delete_site_option('atai_keywords_title');
delete_option('atai_admin_capability');
delete_site_option('atai_admin_capability');
delete_option('atai_ecomm');
delete_site_option('atai_ecomm');
delete_option('atai_ecomm_title');
delete_site_option('atai_ecomm_title');
delete_option('atai_public');
delete_site_option('atai_public');
delete_option('atai_alt_prefix');
delete_site_option('atai_alt_prefix');
delete_option('atai_alt_suffix');
delete_site_option('atai_alt_suffix');
delete_option('atai_gpt_prompt');
delete_site_option('atai_gpt_prompt');
delete_option('atai_type_extensions');
delete_site_option('atai_type_extensions');
delete_option('atai_excluded_post_types');
delete_site_option('atai_excluded_post_types');
delete_option('atai_no_credit_warning');
delete_site_option('atai_no_credit_warning');
delete_option('atai_bulk_refresh_overwrite');
delete_site_option('atai_bulk_refresh_overwrite');
delete_option('atai_bulk_refresh_external');
delete_site_option('atai_bulk_refresh_external');
delete_option('atai_refresh_src_attr');
delete_site_option('atai_refresh_src_attr');
delete_option('atai_wp_generate_metadata');
delete_site_option('atai_wp_generate_metadata');
delete_option('atai_timeout');
delete_site_option('atai_timeout');
delete_option('atai_network_settings');
delete_site_option('atai_network_settings');
delete_option('atai_network_hide_credits');
delete_site_option('atai_network_hide_credits');
delete_option('atai_error_logs');
delete_site_option('atai_error_logs');
delete_option('atai_csv_import_lang');
delete_site_option('atai_csv_import_lang');
delete_option('atai_db_version');
delete_site_option('atai_db_version');
delete_option('elementor_version');
delete_site_option('elementor_version');

// Delete Transients
delete_transient('atai_show_setup_notice');
delete_site_transient('atai_show_setup_notice');
delete_transient('atai_insufficient_credits');
delete_site_transient('atai_insufficient_credits');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttext_bulk_select_generate_%', '_site_transient_alttext_bulk_select_generate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_atai_url_access_suggestion_%', '_site_transient_atai_url_access_suggestion_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_atai_bulk_skip_reasons_%', '_site_transient_atai_bulk_skip_reasons_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alttext_bulk_select_generate_redirect_%', '_site_transient_alttext_bulk_select_generate_redirect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bulk_generate_alt');
delete_site_transient('bulk_generate_alt');
delete_transient('atai_enrich_post_content_success');
delete_site_transient('atai_enrich_post_content_success');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wds_focus-keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'as3cf_filesize_total' ) );

