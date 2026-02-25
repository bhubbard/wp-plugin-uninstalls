<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfxvxp_version');
delete_site_option('sfxvxp_version');
delete_option('sfxvxp_dam_use_widget_only');
delete_site_option('sfxvxp_dam_use_widget_only');
delete_option('sfxvxp_dam_token');
delete_site_option('sfxvxp_dam_token');
delete_option('sfxvxp_dam_sec');
delete_site_option('sfxvxp_dam_sec');
delete_option('sfxvxp_dam_directory');
delete_site_option('sfxvxp_dam_directory');
delete_option('sfxvxp_dam_sync_dam_metadata_to_wp');
delete_site_option('sfxvxp_dam_sync_dam_metadata_to_wp');
delete_option('sfxvxp_dam_keep_file');
delete_site_option('sfxvxp_dam_keep_file');
delete_option('sfxvxp_dam_sync_selection_metadata');
delete_site_option('sfxvxp_dam_sync_selection_metadata');
delete_option('sfxvxp_dam_sync_alt_text');
delete_site_option('sfxvxp_dam_sync_alt_text');
delete_option('sfxvxp_dam_sync_title');
delete_site_option('sfxvxp_dam_sync_title');
delete_option('sfxvxp_dam_sync_description');
delete_site_option('sfxvxp_dam_sync_description');
delete_option('sfxvxp_dam_sync_caption');
delete_site_option('sfxvxp_dam_sync_caption');
delete_option('sfxvxp_dam_resize_option');
delete_site_option('sfxvxp_dam_resize_option');
delete_option('sfxvxp_dam_sync_assets_from_dam_to_wp');
delete_site_option('sfxvxp_dam_sync_assets_from_dam_to_wp');
delete_option('sfxvxp_dam_metadata_to_get_attachment_id');
delete_site_option('sfxvxp_dam_metadata_to_get_attachment_id');
delete_option('sfxvxp_dam_sort_default_option');
delete_site_option('sfxvxp_dam_sort_default_option');
delete_option('sfxvxp_dam_disable_transformations');
delete_site_option('sfxvxp_dam_disable_transformations');
delete_option('sfxvxp_dam_skip_download_file_size');
delete_site_option('sfxvxp_dam_skip_download_file_size');
delete_option('sfxvxp_dam_enable_ai_embed');
delete_site_option('sfxvxp_dam_enable_ai_embed');
delete_option('sfxvxp_dam_widget_views');
delete_site_option('sfxvxp_dam_widget_views');
delete_option('sfxvxp_dmo_token_cname');
delete_site_option('sfxvxp_dmo_token_cname');
delete_option('sfxvxp_dmo_standard_mode');
delete_site_option('sfxvxp_dmo_standard_mode');
delete_option('sfxvxp_dmo_use_origin_url');
delete_site_option('sfxvxp_dmo_use_origin_url');
delete_option('sfxvxp_dmo_lazy_loading');
delete_site_option('sfxvxp_dmo_lazy_loading');
delete_option('sfxvxp_dmo_ignore_svg');
delete_site_option('sfxvxp_dmo_ignore_svg');
delete_option('sfxvxp_dmo_prevent_image_upsize');
delete_site_option('sfxvxp_dmo_prevent_image_upsize');
delete_option('sfxvxp_dmo_image_quality');
delete_site_option('sfxvxp_dmo_image_quality');
delete_option('sfxvxp_dmo_maximum_pixel_ratio');
delete_site_option('sfxvxp_dmo_maximum_pixel_ratio');
delete_option('sfxvxp_dmo_remove_v7');
delete_site_option('sfxvxp_dmo_remove_v7');
delete_option('sfxvxp_dmo_image_size_attributes');
delete_site_option('sfxvxp_dmo_image_size_attributes');
delete_option('sfxvxp_dmo_url_signature');
delete_site_option('sfxvxp_dmo_url_signature');
delete_option('sfxvxp_dmo_custom_function');
delete_site_option('sfxvxp_dmo_custom_function');
delete_option('sfxvxp_dmo_custom_library');
delete_site_option('sfxvxp_dmo_custom_library');
delete_option('sfxvxp_dmo_skip_classes');
delete_site_option('sfxvxp_dmo_skip_classes');
delete_option('sfxvxp_dmo_skip_files');
delete_site_option('sfxvxp_dmo_skip_files');
delete_option('sfxvxp_dmo_enable_srcset');
delete_site_option('sfxvxp_dmo_enable_srcset');
delete_option('sfxvxp_dmo_srcset_widths');
delete_site_option('sfxvxp_dmo_srcset_widths');
delete_option('sfxvxp_setup_completed');
delete_site_option('sfxvxp_setup_completed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('sfxvxp_dam_sass_key');
delete_site_transient('sfxvxp_dam_sass_key');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sfxvxp_sync_dam_attachment_%', '_site_transient_sfxvxp_sync_dam_attachment_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('sfxvxp_attachments_cron_lock');
delete_site_transient('sfxvxp_attachments_cron_lock');

// Clear Cron Jobs
wp_clear_scheduled_hook('sfxvxp_dam_sync_cron');
wp_clear_scheduled_hook('sfxvxp_sync_dam_assets_to_wp');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_select_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_select_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_select_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_select_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_delete_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_delete_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_delete_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_delete_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfxvxp_dam_error_msg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfxvxp_dam_error_msg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfxvxp_dam_error_msg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfxvxp_dam_error_msg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

