<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otter_blocks_logger_flag');
delete_site_option('otter_blocks_logger_flag');
delete_option('themeisle_blocks_settings_blocks_animation');
delete_site_option('themeisle_blocks_settings_blocks_animation');
delete_option('themeisle_blocks_settings_optimize_animations_css');
delete_site_option('themeisle_blocks_settings_optimize_animations_css');
delete_option('otter_animation_dismiss_welcome_notice');
delete_site_option('otter_animation_dismiss_welcome_notice');
delete_option('otter_animation_welcome_notice_display_time');
delete_site_option('otter_animation_welcome_notice_display_time');
delete_option('themeisle_blocks_settings_css_module');
delete_site_option('themeisle_blocks_settings_css_module');
delete_option('themeisle_blocks_db_version');
delete_site_option('themeisle_blocks_db_version');
delete_option('otter_reference_key');
delete_site_option('otter_reference_key');
delete_option('otter_blocks_install');
delete_site_option('otter_blocks_install');
delete_option('themeisle_blocks_settings_notifications');
delete_site_option('themeisle_blocks_settings_notifications');
delete_option('themeisle_blocks_settings_global_defaults');
delete_site_option('themeisle_blocks_settings_global_defaults');
delete_option('themeisle_blocks_settings_review_scale');
delete_site_option('themeisle_blocks_settings_review_scale');
delete_option('themeisle_blocks_settings_block_ai_toolbar_module');
delete_site_option('themeisle_blocks_settings_block_ai_toolbar_module');
delete_option('themeisle_blocks_settings_block_conditions');
delete_site_option('themeisle_blocks_settings_block_conditions');
delete_option('themeisle_blocks_settings_patterns_library');
delete_site_option('themeisle_blocks_settings_patterns_library');
delete_option('themeisle_blocks_settings_dynamic_content');
delete_site_option('themeisle_blocks_settings_dynamic_content');
delete_option('themeisle_blocks_settings_highlight_dynamic');
delete_site_option('themeisle_blocks_settings_highlight_dynamic');
delete_option('themeisle_open_ai_api_key');
delete_site_option('themeisle_open_ai_api_key');
delete_option('themeisle_blocks_settings_onboarding');
delete_site_option('themeisle_blocks_settings_onboarding');
delete_option('themeisle_sdk_promotions_otter_installed');
delete_site_option('themeisle_sdk_promotions_otter_installed');
delete_option('themeisle_google_captcha_api_site_key');
delete_site_option('themeisle_google_captcha_api_site_key');
delete_option('themeisle_google_map_block_api_key');
delete_site_option('themeisle_google_map_block_api_key');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('themeisle_blocks_widgets_fonts');
delete_site_option('themeisle_blocks_widgets_fonts');
delete_option('themeisle_blocks_widgets_css');
delete_site_option('themeisle_blocks_widgets_css');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('themeisle_blocks_widgets_css_file');
delete_site_option('themeisle_blocks_widgets_css_file');
delete_option('themeisle_blocks_form_emails');
delete_site_option('themeisle_blocks_form_emails');
delete_option('themeisle_blocks_settings_redirect');
delete_site_option('themeisle_blocks_settings_redirect');
delete_option('themeisle_blocks_settings_onboarding_wizard');
delete_site_option('themeisle_blocks_settings_onboarding_wizard');
delete_option('themeisle_blocks_settings_disable_review_schema');
delete_site_option('themeisle_blocks_settings_disable_review_schema');
delete_option('otter_blocks_logger_data');
delete_site_option('otter_blocks_logger_data');
delete_option('themeisle_stripe_api_key');
delete_site_option('themeisle_stripe_api_key');
delete_option('themeisle_google_captcha_api_secret_key');
delete_site_option('themeisle_google_captcha_api_secret_key');
delete_option('themeisle_blocks_settings_default_block');
delete_site_option('themeisle_blocks_settings_default_block');
delete_option('themeisle_blocks_form_fields_option');
delete_site_option('themeisle_blocks_form_fields_option');
delete_option('themeisle_webhooks_options');
delete_site_option('themeisle_webhooks_options');
delete_option('themeisle_otter_ai_usage');
delete_site_option('themeisle_otter_ai_usage');
delete_option('themeisle_disabled_blocks');
delete_site_option('themeisle_disabled_blocks');
delete_option('themeisle_blocks_settings_prompt_actions');
delete_site_option('themeisle_blocks_settings_prompt_actions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_plan' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_failed_checks' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_logger_flag' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('themeisle_sdk_notifications');
delete_site_option('themeisle_sdk_notifications');
delete_option('optimole_reference_key');
delete_site_option('optimole_reference_key');
delete_option('rop_reference_key');
delete_site_option('rop_reference_key');
delete_option('neve_reference_key');
delete_site_option('neve_reference_key');
delete_option('hyve_reference_key');
delete_site_option('hyve_reference_key');
delete_option('wp_full_pay_reference_key');
delete_site_option('wp_full_pay_reference_key');
delete_option('feedzy_reference_key');
delete_site_option('feedzy_reference_key');
delete_option('themeisle_sdk_promotions_otter');
delete_site_option('themeisle_sdk_promotions_otter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_install' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');

// Delete Transients
delete_transient('otter_animations_parsed');
delete_site_transient('otter_animations_parsed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_plugin_info_%', '_site_transient_ti_plugin_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('themeisle_sdk_cache_token');
delete_site_transient('themeisle_sdk_cache_token');
delete_transient('themeisle_sdk_feed_items');
delete_site_transient('themeisle_sdk_feed_items');
delete_transient('themeisle_sdk_products');
delete_site_transient('themeisle_sdk_products');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%act_err', '_site_transient_%act_err' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_license_data', '_site_transient_%_license_data' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('tsk_attachment_count');
delete_site_transient('tsk_attachment_count');
delete_transient('tsk_posts_count');
delete_site_transient('tsk_posts_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_theme_info_%', '_site_transient_ti_theme_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_warning_rollback', '_site_transient_%_warning_rollback' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_sdk_pause_%', '_site_transient_ti_sdk_pause_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('otter_montly_scheduled_events');
wp_clear_scheduled_hook('delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_stylesheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_stylesheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_stylesheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_stylesheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_has_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_has_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_has_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_themeisle_gutenberg_block_has_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'otter_form_record_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'otter_form_record_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'otter_form_record_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'otter_form_record_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'o_stripe_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'o_stripe_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'o_stripe_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'o_stripe_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );

