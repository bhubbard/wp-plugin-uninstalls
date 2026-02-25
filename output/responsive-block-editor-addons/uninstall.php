<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('rbea_custom_css_on');
delete_site_option('rbea_custom_css_on');
delete_option('rbea_blocks');
delete_site_option('rbea_blocks');
delete_option('rbea_global_inherit_from_theme');
delete_site_option('rbea_global_inherit_from_theme');
delete_option('rbea_global_inherit_from_theme_last_changed');
delete_site_option('rbea_global_inherit_from_theme_last_changed');
delete_option('rbea_default_content_width');
delete_site_option('rbea_default_content_width');
delete_option('rbea_default_container_gap');
delete_site_option('rbea_default_container_gap');
delete_option('rbea_default_container_padding');
delete_site_option('rbea_default_container_padding');
delete_option('rbea_auto_block_recovery');
delete_site_option('rbea_auto_block_recovery');
delete_option('rbea_template_library_button_on');
delete_site_option('rbea_template_library_button_on');
delete_option('total-responsive-sites-data');
delete_site_option('total-responsive-sites-data');
delete_option('responsive_block_editor_addons_review_notice_dismissed');
delete_site_option('responsive_block_editor_addons_review_notice_dismissed');
delete_option('responsive_block_editor_addons_review_notice');
delete_site_option('responsive_block_editor_addons_review_notice');
delete_option('responsive_block_editor_addons_intial_timeout');
delete_site_option('responsive_block_editor_addons_intial_timeout');
delete_option('responsive_block_editor_addons_template_library_used');
delete_site_option('responsive_block_editor_addons_template_library_used');
delete_option('rbea_blocks_data_update');
delete_site_option('rbea_blocks_data_update');
delete_option('wc_am_client_responsive_addons_pro_activated');
delete_site_option('wc_am_client_responsive_addons_pro_activated');
delete_option('last_xml_export_checksums');
delete_site_option('last_xml_export_checksums');
delete_option('reads_app_settings');
delete_site_option('reads_app_settings');
delete_option('total-responsive-site-pages');
delete_site_option('total-responsive-site-pages');

// Delete Transients
delete_transient('responsive_block_editor_addons_activation_redirect');
delete_site_transient('responsive_block_editor_addons_activation_redirect');
delete_transient('responsive_block_editor_addons_intial_timeout');
delete_site_transient('responsive_block_editor_addons_intial_timeout');
delete_transient('responsive_block_editor_addons_timeout');
delete_site_transient('responsive_block_editor_addons_timeout');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rbea-instagram-api_%', '_site_transient_rbea-instagram-api_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rbea_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rbea_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rbea_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rbea_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rbea_template_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rbea_template_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rbea_template_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rbea_template_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rba_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rba_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rba_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rba_category' ) );

