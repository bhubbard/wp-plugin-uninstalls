<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pb_install_time');
delete_site_option('pb_install_time');
delete_option('pb_options');
delete_site_option('pb_options');
delete_option('pbg_global_features');
delete_site_option('pbg_global_features');
delete_option('pbg_blocks_settings');
delete_site_option('pbg_blocks_settings');
delete_option('pbg_performance_options');
delete_site_option('pbg_performance_options');
delete_option('pbg_integrations_options');
delete_site_option('pbg_integrations_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pbg_editor_css_hash');
delete_site_option('pbg_editor_css_hash');
delete_option('pbg_editor_css_version');
delete_site_option('pbg_editor_css_version');
delete_option('pbg_global_layout');
delete_site_option('pbg_global_layout');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('pbg_global_colors_to_default');
delete_site_option('pbg_global_colors_to_default');
delete_option('pbg_global_typography_to_default');
delete_site_option('pbg_global_typography_to_default');
delete_option('pbg_global_typography');
delete_site_option('pbg_global_typography');
delete_option('pbg_global_color_palette');
delete_site_option('pbg_global_color_palette');
delete_option('pbg_global_colors');
delete_site_option('pbg_global_colors');
delete_option('pbg_custom_colors');
delete_site_option('pbg_custom_colors');
delete_option('pbg_global_color_palettes');
delete_site_option('pbg_global_color_palettes');
delete_option('pbg_loaded_fonts');
delete_site_option('pbg_loaded_fonts');
delete_option('pbg_downloaded_font_files');
delete_site_option('pbg_downloaded_font_files');
delete_option('pbg_local_font_files');
delete_site_option('pbg_local_font_files');
delete_option('pbg_favorite_templates');
delete_site_option('pbg_favorite_templates');
delete_option('_pbg_plugin_pointer_priority');
delete_site_option('_pbg_plugin_pointer_priority');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pb_rollback_versions_%', '_site_transient_pb_rollback_versions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('pbg_cleanup_done');
delete_site_transient('pbg_cleanup_done');
delete_transient('pattern_templates');
delete_site_transient('pattern_templates');
delete_transient('pattern_categories');
delete_site_transient('pattern_categories');
delete_transient('pattern_blocks');
delete_site_transient('pattern_blocks');
delete_transient('pbg_cm25_pointer_dismiss');
delete_site_transient('pbg_cm25_pointer_dismiss');

// Clear Cron Jobs
wp_clear_scheduled_hook('pbg_delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_premium_css_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_premium_css_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_premium_css_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_premium_css_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_premium_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_premium_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_premium_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_premium_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_premium_css_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_premium_css_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_premium_css_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_premium_css_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pbg_blocks_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pbg_blocks_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pbg_blocks_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pbg_blocks_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_premium_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_premium_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_premium_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_premium_blocks_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_premium_blocks_local_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_premium_blocks_local_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_premium_blocks_local_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_premium_blocks_local_image_hash' ) );

