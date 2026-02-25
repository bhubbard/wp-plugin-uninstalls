<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_codes_ajax');
delete_site_option('_codes_ajax');
delete_option('_codes_sound');
delete_site_option('_codes_sound');
delete_option('_codes_shortcut');
delete_site_option('_codes_shortcut');
delete_option('_codes_emmet');
delete_site_option('_codes_emmet');
delete_option('_codes_initial_editor');
delete_site_option('_codes_initial_editor');
delete_option('_codes_desktop');
delete_site_option('_codes_desktop');
delete_option('_codes_tablet_l');
delete_site_option('_codes_tablet_l');
delete_option('_codes_tablet_p');
delete_site_option('_codes_tablet_p');
delete_option('_codes_phone_l');
delete_site_option('_codes_phone_l');
delete_option('_codes_phone_p');
delete_site_option('_codes_phone_p');
delete_option('_codes_retina');
delete_site_option('_codes_retina');
delete_option('_codes_output_order');
delete_site_option('_codes_output_order');
delete_option('_codes_admin_bar');
delete_site_option('_codes_admin_bar');
delete_option('_codes_store');
delete_site_option('_codes_store');
delete_option('_codes_version');
delete_site_option('_codes_version');
delete_option('_codes_ai_provider');
delete_site_option('_codes_ai_provider');
delete_option('_codes_openai_key');
delete_site_option('_codes_openai_key');
delete_option('_codes_google_key');
delete_site_option('_codes_google_key');
delete_option('_codes_google_models');
delete_site_option('_codes_google_models');
delete_option('_codes_openai_models');
delete_site_option('_codes_openai_models');
delete_option('codes_ai_notice_dismissed');
delete_site_option('codes_ai_notice_dismissed');
delete_option('_codes_location');
delete_site_option('_codes_location');
delete_option('cstm_cds_style_mode');
delete_site_option('cstm_cds_style_mode');
delete_option('cstm_cds_permission_roles');
delete_site_option('cstm_cds_permission_roles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%css_save_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cstm_cds_js_head_save_count');
delete_site_option('cstm_cds_js_head_save_count');
delete_option('cstm_cds_admin_notes');
delete_site_option('cstm_cds_admin_notes');
delete_option('cstm_cds_css_save_count');
delete_site_option('cstm_cds_css_save_count');
delete_option('cstm_cds_admin_css_save_count');
delete_site_option('cstm_cds_admin_css_save_count');
delete_option('cstm_cds_js_bottom_save_count');
delete_site_option('cstm_cds_js_bottom_save_count');
delete_option('cstm_cds_admin_js_head_save_count');
delete_site_option('cstm_cds_admin_js_head_save_count');
delete_option('cstm_cds_admin_js_bottom_save_count');
delete_site_option('cstm_cds_admin_js_bottom_save_count');
delete_option('cstm_cds_tablet_l');
delete_site_option('cstm_cds_tablet_l');
delete_option('cstm_cds_tablet_p');
delete_site_option('cstm_cds_tablet_p');
delete_option('cstm_cds_phone_l');
delete_site_option('cstm_cds_phone_l');
delete_option('cstm_cds_phone_p');
delete_site_option('cstm_cds_phone_p');
delete_option('cstm_cds_store_files');
delete_site_option('cstm_cds_store_files');
delete_option('cstm_cds_editor_theme');
delete_site_option('cstm_cds_editor_theme');
delete_option('cstm_cds_admin_roles');
delete_site_option('cstm_cds_admin_roles');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_adminroles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_adminroles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_adminroles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_adminroles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_show_breakpoints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_show_breakpoints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_show_breakpoints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_show_breakpoints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_savecount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_savecount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_savecount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_savecount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_fontsize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_fontsize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_fontsize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_fontsize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codes_indent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codes_indent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codes_indent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codes_indent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edit_last' ) );

