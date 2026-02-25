<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('su_option_unsafe_features');
delete_site_option('su_option_unsafe_features');
delete_option('su_option_unsafe_features_auto_off');
delete_site_option('su_option_unsafe_features_auto_off');
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
delete_option('su_option_hide_deprecated');
delete_site_option('su_option_hide_deprecated');
delete_option('su_option_custom-css');
delete_site_option('su_option_custom-css');
delete_option('su_option_skin');
delete_site_option('su_option_skin');
delete_option('su_option_supported_blocks');
delete_site_option('su_option_supported_blocks');
delete_option('su_option_show_toolbar_button');
delete_site_option('su_option_show_toolbar_button');
delete_option('su_option_show_block_controls_button');
delete_site_option('su_option_show_block_controls_button');
delete_option('su_option_skip');
delete_site_option('su_option_skip');
delete_option('su_option_generator_access');
delete_site_option('su_option_generator_access');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'su_presets_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('su_option_prefix');
delete_site_option('su_option_prefix');
delete_option('su_option_enable_shortcodes_in');
delete_site_option('su_option_enable_shortcodes_in');
delete_option('su_option_custom-formatting');
delete_site_option('su_option_custom-formatting');
delete_option('su_option_galleries-432');
delete_site_option('su_option_galleries-432');
delete_option('su_option_version');
delete_site_option('su_option_version');
delete_option('su_option_do_nested_shortcodes_alt');
delete_site_option('su_option_do_nested_shortcodes_alt');
delete_option('su_vote');
delete_site_option('su_vote');
delete_option('su_option_dismissed_notices');
delete_site_option('su_option_dismissed_notices');
delete_option('su_installed');
delete_site_option('su_installed');
delete_option('su_generator_access');
delete_site_option('su_generator_access');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_su/generator/settings/%', '_site_transient_su/generator/settings/%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'su_slide_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'su_slide_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'su_slide_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'su_slide_link' ) );

