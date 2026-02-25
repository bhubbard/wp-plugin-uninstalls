<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('epkb_one_time_notices');
delete_site_option('epkb_one_time_notices');
delete_option('epkb_ongoing_notices');
delete_site_option('epkb_ongoing_notices');
delete_option('elementor_cpt_support');
delete_site_option('elementor_cpt_support');
delete_option('epkb_flush_rewrite_rules');
delete_site_option('epkb_flush_rewrite_rules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'epkb_not_completed_setup_wizard_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('epkb_ai_sync_lock_time');
delete_site_option('epkb_ai_sync_lock_time');
delete_option('epkb_ai_last_sync_completed');
delete_site_option('epkb_ai_last_sync_completed');
delete_option('epkb_ai_configuration');
delete_site_option('epkb_ai_configuration');
delete_option('epkb_ai_widget_configuration');
delete_site_option('epkb_ai_widget_configuration');
delete_option('epkb_ai_training_data_configuration');
delete_site_option('epkb_ai_training_data_configuration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'epkb_articles_sequence_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'epkb_categories_sequence_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('epkb_openai_api_key');
delete_site_option('epkb_openai_api_key');
delete_option('epkb_version');
delete_site_option('epkb_version');
delete_option('epkb_error_log');
delete_site_option('epkb_error_log');
delete_option('amgr_error_log');
delete_site_option('amgr_error_log');
delete_option('epkb_last_seen_version');
delete_site_option('epkb_last_seen_version');
delete_option('epkb_config_1');
delete_site_option('epkb_config_1');
delete_option('epkb_orignal_config_1');
delete_site_option('epkb_orignal_config_1');
delete_option('epkb_articles_sequence_1');
delete_site_option('epkb_articles_sequence_1');
delete_option('epkb_categories_sequence_1');
delete_site_option('epkb_categories_sequence_1');
delete_option('epkb_categories_icons_images_1');
delete_site_option('epkb_categories_icons_images_1');
delete_option('epkb_post_type_1_category_children');
delete_site_option('epkb_post_type_1_category_children');
delete_option('epkb_long_notices');
delete_site_option('epkb_long_notices');
delete_option('epkb_elementor_settings_dismissed');
delete_site_option('epkb_elementor_settings_dismissed');
delete_option('epkb_delete_all_kb_data');
delete_site_option('epkb_delete_all_kb_data');
delete_option('epkb_flags');
delete_site_option('epkb_flags');
delete_option('epkb_openai_key');
delete_site_option('epkb_openai_key');
delete_option('epkb_ml_custom_css_1');
delete_site_option('epkb_ml_custom_css_1');
delete_option('epkb_ml_faqs_kb_id_1');
delete_site_option('epkb_ml_faqs_kb_id_1');
delete_option('epkb_ml_faqs_category_ids_1');
delete_site_option('epkb_ml_faqs_category_ids_1');
delete_option('epkb_faq_group_ids_1');
delete_site_option('epkb_faq_group_ids_1');
delete_option('epkb_ai_widget_configuration_1');
delete_site_option('epkb_ai_widget_configuration_1');
delete_option('epkb_ai_training_data_table_version');
delete_site_option('epkb_ai_training_data_table_version');
delete_option('epkb_ai_content_analysis_table_version');
delete_site_option('epkb_ai_content_analysis_table_version');
delete_option('epkb_ai_messages_table_version');
delete_site_option('epkb_ai_messages_table_version');
delete_option('asea_version');
delete_site_option('asea_version');
delete_option('asea_version_first');
delete_site_option('asea_version_first');
delete_option('asea_error_log');
delete_site_option('asea_error_log');
delete_option('asea_license_key');
delete_site_option('asea_license_key');
delete_option('asea_license_state');
delete_site_option('asea_license_state');
delete_option('elay_version');
delete_site_option('elay_version');
delete_option('elay_version_first');
delete_site_option('elay_version_first');
delete_option('elay_error_log');
delete_site_option('elay_error_log');
delete_option('elay_license_key');
delete_site_option('elay_license_key');
delete_option('elay_license_state');
delete_site_option('elay_license_state');
delete_option('eprf_version');
delete_site_option('eprf_version');
delete_option('eprf_version_first');
delete_site_option('eprf_version_first');
delete_option('eprf_error_log');
delete_site_option('eprf_error_log');
delete_option('eprf_license_key');
delete_site_option('eprf_license_key');
delete_option('eprf_license_state');
delete_site_option('eprf_license_state');
delete_option('epie_version');
delete_site_option('epie_version');
delete_option('epie_version_first');
delete_site_option('epie_version_first');
delete_option('epie_error_log');
delete_site_option('epie_error_log');
delete_option('epie_license_key');
delete_site_option('epie_license_key');
delete_option('epie_license_state');
delete_site_option('epie_license_state');
delete_option('kblk_version');
delete_site_option('kblk_version');
delete_option('kblk_version_first');
delete_site_option('kblk_version_first');
delete_option('kblk_error_log');
delete_site_option('kblk_error_log');
delete_option('kblk_license_key');
delete_site_option('kblk_license_key');
delete_option('kblk_license_state');
delete_site_option('kblk_license_state');
delete_option('emkb_version');
delete_site_option('emkb_version');
delete_option('emkb_version_first');
delete_site_option('emkb_version_first');
delete_option('emkb_error_log');
delete_site_option('emkb_error_log');
delete_option('emkb_license_key');
delete_site_option('emkb_license_key');
delete_option('emkb_license_state');
delete_site_option('emkb_license_state');
delete_option('widg_version');
delete_site_option('widg_version');
delete_option('widg_version_first');
delete_site_option('widg_version_first');
delete_option('widg_error_log');
delete_site_option('widg_error_log');
delete_option('widg_license_key');
delete_site_option('widg_license_key');
delete_option('widg_license_state');
delete_site_option('widg_license_state');
delete_option('_epie_import_current_kb_id');
delete_site_option('_epie_import_current_kb_id');
delete_option('_epie_import_current_step');
delete_site_option('_epie_import_current_step');
delete_option('_epie_import_selected_rows');
delete_site_option('_epie_import_selected_rows');
delete_option('_epie_import_processed_count');
delete_site_option('_epie_import_processed_count');

// Delete Transients
delete_transient('_epkb_crel_notice');
delete_site_transient('_epkb_crel_notice');
delete_transient('_epkb_crel_notice2');
delete_site_transient('_epkb_crel_notice2');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_epkb_ai_error_notification_count_%', '_site_transient_epkb_ai_error_notification_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('epkb_ai_sync_lock');
delete_site_transient('epkb_ai_sync_lock');
delete_transient('epkb_ai_rate_limit_until');
delete_site_transient('epkb_ai_rate_limit_until');
delete_transient('epkb_chatgpt_rate_limit');
delete_site_transient('epkb_chatgpt_rate_limit');
delete_transient('epkb_ai_dashboard_status');
delete_site_transient('epkb_ai_dashboard_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_epkb_sync_progress_%', '_site_transient_epkb_sync_progress_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('epkb_ai_chat_security_logs');
delete_site_transient('epkb_ai_chat_security_logs');
delete_transient('epkb_openai_rate_limit');
delete_site_transient('epkb_openai_rate_limit');
delete_transient('_epkb_faqs_flush_rewrite_rules');
delete_site_transient('_epkb_faqs_flush_rewrite_rules');
delete_transient('_epkb_plugin_activated');
delete_site_transient('_epkb_plugin_activated');
delete_transient('_epkb_delete_all_kb_data');
delete_site_transient('_epkb_delete_all_kb_data');
delete_transient('_epkb_plugin_installed');
delete_site_transient('_epkb_plugin_installed');
delete_transient('_epie_import_articles_to_import');
delete_site_transient('_epie_import_articles_to_import');

// Clear Cron Jobs
wp_clear_scheduled_hook('epkb_do_sync_cron_event');
wp_clear_scheduled_hook('epkb_do_content_analysis_cron_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqs_order_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqs_order_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqs_order_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqs_order_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epkb_glossary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epkb_glossary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epkb_glossary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epkb_glossary_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

