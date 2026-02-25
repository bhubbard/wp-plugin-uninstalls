<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bunny_fonts');
delete_site_option('bunny_fonts');
delete_option('maxi_ai_model');
delete_site_option('maxi_ai_model');
delete_option('maxi_pro_network');
delete_site_option('maxi_pro_network');
delete_option('local_fonts');
delete_site_option('local_fonts');
delete_option('local_fonts_uploaded');
delete_site_option('local_fonts_uploaded');
delete_option('maxiblocks_current_starter_site');
delete_site_option('maxiblocks_current_starter_site');
delete_option('maxi_pro');
delete_site_option('maxi_pro');
delete_option('remove_local_fonts');
delete_site_option('remove_local_fonts');
delete_option('google_api_key_option');
delete_site_option('google_api_key_option');
delete_option('openai_api_key_option');
delete_site_option('openai_api_key_option');
delete_option('maxi_quick_start_initial_theme');
delete_site_option('maxi_quick_start_initial_theme');
delete_option('maxi_ai_language');
delete_site_option('maxi_ai_language');
delete_option('maxi_ai_tone');
delete_site_option('maxi_ai_tone');
delete_option('maxi_ai_site_description');
delete_site_option('maxi_ai_site_description');
delete_option('maxi_ai_audience');
delete_site_option('maxi_ai_audience');
delete_option('maxi_ai_site_goal');
delete_site_option('maxi_ai_site_goal');
delete_option('maxi_ai_services');
delete_site_option('maxi_ai_services');
delete_option('maxi_ai_business_name');
delete_site_option('maxi_ai_business_name');
delete_option('maxi_ai_business_info');
delete_site_option('maxi_ai_business_info');
delete_option('hide_tooltips');
delete_site_option('hide_tooltips');
delete_option('hide_fse_resizable_handles');
delete_site_option('hide_fse_resizable_handles');
delete_option('hide_gutenberg_responsive_preview');
delete_site_option('hide_gutenberg_responsive_preview');
delete_option('maxi_show_indicators');
delete_site_option('maxi_show_indicators');
delete_option('maxi_breakpoints');
delete_site_option('maxi_breakpoints');
delete_option('maxi_blocks_version');
delete_site_option('maxi_blocks_version');
delete_option('accessibility_option');
delete_site_option('accessibility_option');
delete_option('maxi_blocks_custom_fonts');
delete_site_option('maxi_blocks_custom_fonts');
delete_option('maxi_plugin_db_tables_created');
delete_site_option('maxi_plugin_db_tables_created');
delete_option('maxi_blocks_quick_start_completed');
delete_site_option('maxi_blocks_quick_start_completed');
delete_option('maxi_blocks_link_color_migrated');
delete_site_option('maxi_blocks_link_color_migrated');
delete_option('maxi_blocks_text_wrap_migrated');
delete_site_option('maxi_blocks_text_wrap_migrated');
delete_option('maxi_blocks_sc_fonts_migration_done');
delete_site_option('maxi_blocks_sc_fonts_migration_done');
delete_option('maxiblocks_go_templates_imported');
delete_site_option('maxiblocks_go_templates_imported');
delete_option('maxiblocks_go_templates_version');
delete_site_option('maxiblocks_go_templates_version');
delete_option('maxiblocks_go_has_link_migration_completed');
delete_site_option('maxiblocks_go_has_link_migration_completed');
delete_option('maxi_blocks_db_notice_dismissed');
delete_site_option('maxi_blocks_db_notice_dismissed');

// Delete Transients
delete_transient('maxi_auth_registry');
delete_site_transient('maxi_auth_registry');
delete_transient('maxi_blocks_activation_redirect');
delete_site_transient('maxi_blocks_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_total_count', '_site_transient_%_total_count' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('maxi_blocks_migrate_sc_fonts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'maxi_blocks_master_toolbar_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'maxi_blocks_master_toolbar_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'maxi_blocks_master_toolbar_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'maxi_blocks_master_toolbar_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

