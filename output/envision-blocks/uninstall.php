<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'envision-blocks-widget-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('envision_blocks_integrations_settings');
delete_site_option('envision_blocks_integrations_settings');
delete_option('envision_blocks_settings_settings');
delete_site_option('envision_blocks_settings_settings');
delete_option('_envision_blocks_elementor_defaults');
delete_site_option('_envision_blocks_elementor_defaults');
delete_option('envision-blocks-widget-dark-mode');
delete_site_option('envision-blocks-widget-dark-mode');
delete_option('envision-blocks-widget-offcanvas');
delete_site_option('envision-blocks-widget-offcanvas');
delete_option('envision-blocks-menu-icon');
delete_site_option('envision-blocks-menu-icon');
delete_option('envision-blocks-widget-nav-menu');
delete_site_option('envision-blocks-widget-nav-menu');
delete_option('envision-blocks-widget-menu-icon');
delete_site_option('envision-blocks-widget-menu-icon');
delete_option('elementor_cpt_support');
delete_site_option('elementor_cpt_support');
delete_option('_elementor_editor_upgrade_notice_dismissed');
delete_site_option('_elementor_editor_upgrade_notice_dismissed');
delete_option('elementor_disable_color_schemes');
delete_site_option('elementor_disable_color_schemes');
delete_option('elementor_disable_typography_schemes');
delete_site_option('elementor_disable_typography_schemes');
delete_option('elementor_unfiltered_files_upload');
delete_site_option('elementor_unfiltered_files_upload');
delete_option('yith_wcwl_show_on_loop');
delete_site_option('yith_wcwl_show_on_loop');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );

