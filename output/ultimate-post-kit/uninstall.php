<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdt_biggopti_dismissals');
delete_site_option('bdt_biggopti_dismissals');
delete_option('upk_white_label_enabled');
delete_site_option('upk_white_label_enabled');
delete_option('upk_white_label_hide_license');
delete_site_option('upk_white_label_hide_license');
delete_option('upk_white_label_bdtupk_hide');
delete_site_option('upk_white_label_bdtupk_hide');
delete_option('upk_white_label_title');
delete_site_option('upk_white_label_title');
delete_option('upk_white_label_icon');
delete_site_option('upk_white_label_icon');
delete_option('upk_white_label_icon_id');
delete_site_option('upk_white_label_icon_id');
delete_option('upk_white_label_logo');
delete_site_option('upk_white_label_logo');
delete_option('upk_white_label_logo_id');
delete_site_option('upk_white_label_logo_id');
delete_option('ultimate_post_kit_license_title_status');
delete_site_option('ultimate_post_kit_license_title_status');
delete_option('upk_white_label_access_token');
delete_site_option('upk_white_label_access_token');
delete_option('upk_localhost_email_data');
delete_site_option('upk_localhost_email_data');
delete_option('upk_custom_css');
delete_site_option('upk_custom_css');
delete_option('upk_custom_js');
delete_site_option('upk_custom_js');
delete_option('upk_custom_css_2');
delete_site_option('upk_custom_css_2');
delete_option('upk_custom_js_2');
delete_site_option('upk_custom_js_2');
delete_option('upk_excluded_pages');
delete_site_option('upk_excluded_pages');
delete_option('ultimate_post_kit_license_key');
delete_site_option('ultimate_post_kit_license_key');
delete_option('ultimate_post_kit_license_email');
delete_site_option('ultimate_post_kit_license_email');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_installed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ultimate_post_kit_active_modules');
delete_site_option('ultimate_post_kit_active_modules');
delete_option('bdtupk_setup_wizard_completed');
delete_site_option('bdtupk_setup_wizard_completed');
delete_option('ultimate_post_kit_elementor_extend');
delete_site_option('ultimate_post_kit_elementor_extend');
delete_option('ultimate_post_kit_api_settings');
delete_site_option('ultimate_post_kit_api_settings');
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dismissed_notice_%', '_site_transient_dismissed_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'upk-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'upk-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'upk-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'upk-category-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upk_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upk_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upk_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upk_video_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upk_audio_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upk_audio_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upk_audio_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upk_audio_link_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upk_audio_title_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upk_audio_title_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upk_audio_title_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upk_audio_title_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upk_artist_name_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upk_artist_name_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upk_artist_name_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upk_artist_name_meta_key' ) );

