<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kadence_blocks_activecampaign_api_key');
delete_site_option('kadence_blocks_activecampaign_api_key');
delete_option('kadence_blocks_activecampaign_api_base');
delete_site_option('kadence_blocks_activecampaign_api_base');
delete_option('kadence_blocks_recaptcha_language');
delete_site_option('kadence_blocks_recaptcha_language');
delete_option('kt_recaptcha');
delete_site_option('kt_recaptcha');
delete_option('kadence_blocks_mailerlite_api');
delete_site_option('kadence_blocks_mailerlite_api');
delete_option('kadence_blocks_getresponse_api_key');
delete_site_option('kadence_blocks_getresponse_api_key');
delete_option('kadence_blocks_getresponse_api_endpoint');
delete_site_option('kadence_blocks_getresponse_api_endpoint');
delete_option('kadence_blocks_recaptcha_site_key');
delete_site_option('kadence_blocks_recaptcha_site_key');
delete_option('kadence_blocks_google_maps_api');
delete_site_option('kadence_blocks_google_maps_api');
delete_option('kt_blocks_editor_width');
delete_site_option('kt_blocks_editor_width');
delete_option('kadence_blocks_wire_subscribe');
delete_site_option('kadence_blocks_wire_subscribe');
delete_option('kadence_blocks_prophecy');
delete_site_option('kadence_blocks_prophecy');
delete_option('kt_blocks_config_blocks');
delete_site_option('kt_blocks_config_blocks');
delete_option('kadence_blocks_config_blocks');
delete_site_option('kadence_blocks_config_blocks');
delete_option('kadence_blocks_settings_blocks');
delete_site_option('kadence_blocks_settings_blocks');
delete_option('kadence_blocks_colors');
delete_site_option('kadence_blocks_colors');
delete_option('kadence_blocks_global');
delete_site_option('kadence_blocks_global');
delete_option('kadence_blocks_settings');
delete_site_option('kadence_blocks_settings');
delete_option('kadence_blocks_cloud');
delete_site_option('kadence_blocks_cloud');
delete_option('kadence_blocks_font_settings');
delete_site_option('kadence_blocks_font_settings');
delete_option('kb_design_library_prompts');
delete_site_option('kb_design_library_prompts');
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');
delete_option('kadence_blocks_recaptcha_secret_key');
delete_site_option('kadence_blocks_recaptcha_secret_key');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('kadence_blocks_admin_bar_settings');
delete_site_option('kadence_blocks_admin_bar_settings');
delete_option('kt_api_manager');
delete_site_option('kt_api_manager');
delete_option('kt_api_manager_kadence_gutenberg_pro_data');
delete_site_option('kt_api_manager_kadence_gutenberg_pro_data');
delete_option('kadence_blocks_redirect_on_activation');
delete_site_option('kadence_blocks_redirect_on_activation');
delete_option('kt_blocks_unregistered_blocks');
delete_site_option('kt_blocks_unregistered_blocks');
delete_option('kadence_blocks_turnstile_site_key');
delete_site_option('kadence_blocks_turnstile_site_key');
delete_option('kadence_blocks_turnstile_secret_key');
delete_site_option('kadence_blocks_turnstile_secret_key');
delete_option('kadence_blocks_hcaptcha_site_key');
delete_site_option('kadence_blocks_hcaptcha_site_key');
delete_option('kadence_blocks_hcaptcha_secret_key');
delete_site_option('kadence_blocks_hcaptcha_secret_key');
delete_option('kadence_blocks_header_notice_dismissed');
delete_site_option('kadence_blocks_header_notice_dismissed');
delete_option('kadence_blocks_convertkit_api');
delete_site_option('kadence_blocks_convertkit_api');
delete_option('kadence_blocks_header_popover_tutorial_complete');
delete_site_option('kadence_blocks_header_popover_tutorial_complete');
delete_option('kadenceblocks_data_settings');
delete_site_option('kadenceblocks_data_settings');
delete_option('stellarwp_telemetry');
delete_site_option('stellarwp_telemetry');
delete_option('stellarwp_telemetry_last_send');
delete_site_option('stellarwp_telemetry_last_send');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_timeout' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_block_library_folder');
wp_clear_scheduled_hook('delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kad_form_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kad_form_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kad_form_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kad_form_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kad_post_transparent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kad_post_transparent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kad_post_transparent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kad_post_transparent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pexels_photographer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pexels_photographer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pexels_photographer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pexels_photographer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pexels_photographer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pexels_photographer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pexels_photographer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pexels_photographer_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pexels_photograph_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pexels_photograph_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pexels_photograph_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pexels_photograph_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'archive_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'archive_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'archive_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'archive_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'archive_category_hover_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'archive_category_hover_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'archive_category_hover_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'archive_category_hover_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kadence_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kadence_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kadence_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kadence_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kt_blocks_editor_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kt_blocks_editor_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kt_blocks_editor_width' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kt_blocks_editor_width' ) );

