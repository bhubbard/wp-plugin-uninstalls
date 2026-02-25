<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdt_biggopti_dismissals');
delete_site_option('bdt_biggopti_dismissals');
delete_option('pg_white_label_enabled');
delete_site_option('pg_white_label_enabled');
delete_option('pg_white_label_hide_license');
delete_site_option('pg_white_label_hide_license');
delete_option('pg_white_label_bdtpg_hide');
delete_site_option('pg_white_label_bdtpg_hide');
delete_option('pg_white_label_title');
delete_site_option('pg_white_label_title');
delete_option('pg_white_label_icon');
delete_site_option('pg_white_label_icon');
delete_option('pg_white_label_icon_id');
delete_site_option('pg_white_label_icon_id');
delete_option('pg_white_label_logo');
delete_site_option('pg_white_label_logo');
delete_option('pg_white_label_logo_id');
delete_site_option('pg_white_label_logo_id');
delete_option('pixel_gallery_license_title_status');
delete_site_option('pixel_gallery_license_title_status');
delete_option('pg_white_label_access_token');
delete_site_option('pg_white_label_access_token');
delete_option('pg_localhost_email_data');
delete_site_option('pg_localhost_email_data');
delete_option('pg_custom_css');
delete_site_option('pg_custom_css');
delete_option('pg_custom_js');
delete_site_option('pg_custom_js');
delete_option('pg_custom_css_2');
delete_site_option('pg_custom_css_2');
delete_option('pg_custom_js_2');
delete_site_option('pg_custom_js_2');
delete_option('pg_excluded_pages');
delete_site_option('pg_excluded_pages');
delete_option('pixel_gallery_license_email');
delete_site_option('pixel_gallery_license_email');
delete_option('pixel_gallery_license_key');
delete_site_option('pixel_gallery_license_key');
delete_option('pixel_gallery_active_modules');
delete_site_option('pixel_gallery_active_modules');
delete_option('pixel_gallery_elementor_extend');
delete_site_option('pixel_gallery_elementor_extend');
delete_option('pixel_gallery_third_party_widget');
delete_site_option('pixel_gallery_third_party_widget');
delete_option('bdtpg_setup_wizard_completed');
delete_site_option('bdtpg_setup_wizard_completed');
delete_option('pixel-gallery-minified-asset-manager-version');
delete_site_option('pixel-gallery-minified-asset-manager-version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );

