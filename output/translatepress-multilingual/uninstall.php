<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trp_license_status');
delete_site_option('trp_license_status');
delete_option('trp_advanced_settings');
delete_site_option('trp_advanced_settings');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('trp_add_ons_settings');
delete_site_option('trp_add_ons_settings');
delete_option('trp_license_key');
delete_site_option('trp_license_key');
delete_option('trp_license_details');
delete_site_option('trp_license_details');
delete_option('trp_plugin_optin');
delete_site_option('trp_plugin_optin');
delete_option('trp_machine_translated_characters');
delete_site_option('trp_machine_translated_characters');
delete_option('trp_db_errors');
delete_site_option('trp_db_errors');
delete_option('trp_machine_translation_settings');
delete_site_option('trp_machine_translation_settings');
delete_option('trp_language_switcher_settings');
delete_site_option('trp_language_switcher_settings');
delete_option('trp_db_stored_data');
delete_site_option('trp_db_stored_data');
delete_option('trp_machine_translation_counter');
delete_site_option('trp_machine_translation_counter');
delete_option('trp_updated_database_gettext_original_id_update');
delete_site_option('trp_updated_database_gettext_original_id_update');
delete_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_term_meta_284');
delete_site_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_term_meta_284');
delete_option('trp_plugin_version');
delete_site_option('trp_plugin_version');
delete_option('trp_show_error_db_message');
delete_site_option('trp_show_error_db_message');
delete_option('trp_remove_duplicate_gettext_rows');
delete_site_option('trp_remove_duplicate_gettext_rows');
delete_option('trp_remove_duplicate_dictionary_rows');
delete_site_option('trp_remove_duplicate_dictionary_rows');
delete_option('trp_remove_duplicate_untranslated_dictionary_rows');
delete_site_option('trp_remove_duplicate_untranslated_dictionary_rows');
delete_option('trp_remove_cdata_original_and_dictionary_rows');
delete_site_option('trp_remove_cdata_original_and_dictionary_rows');
delete_option('trp_remove_untranslated_links_dictionary_rows');
delete_site_option('trp_remove_untranslated_links_dictionary_rows');
delete_option('trp_replace_original_id_null');
delete_site_option('trp_replace_original_id_null');
delete_option('trp_updated_database_original_id_insert_166');
delete_site_option('trp_updated_database_original_id_insert_166');
delete_option('trp_updated_database_original_id_cleanup_166');
delete_site_option('trp_updated_database_original_id_cleanup_166');
delete_option('trp_updated_database_original_id_update_166');
delete_site_option('trp_updated_database_original_id_update_166');
delete_option('trp_regenerate_original_meta_table');
delete_site_option('trp_regenerate_original_meta_table');
delete_option('trp_clean_original_meta_table');
delete_site_option('trp_clean_original_meta_table');
delete_option('trp_original_strings_table_for_recovery');
delete_site_option('trp_original_strings_table_for_recovery');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_type_and_tax_284');
delete_site_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_type_and_tax_284');
delete_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_meta_284');
delete_site_option('trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_meta_284');
delete_option('trp_ls_v2_migrated_from_legacy');
delete_site_option('trp_ls_v2_migrated_from_legacy');
delete_option('et_divi');
delete_site_option('et_divi');
delete_option('trp_ald_settings');
delete_site_option('trp_ald_settings');
delete_option('translatepress_avg_affiliate_id');
delete_site_option('translatepress_avg_affiliate_id');
delete_option('translatepress_affiliate_id');
delete_site_option('translatepress_affiliate_id');
delete_option('trp_gettext_normalized');
delete_site_option('trp_gettext_normalized');
delete_option('trp_gettext_scan_paths_completed');
delete_site_option('trp_gettext_scan_paths_completed');
delete_option('trp_onboarding_started');
delete_site_option('trp_onboarding_started');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('trp_checked_licence');
delete_site_transient('trp_checked_licence');
delete_transient('trp_debug_force_check_license_request');
delete_site_transient('trp_debug_force_check_license_request');
delete_transient('trp_debug_force_check_license_response');
delete_site_transient('trp_debug_force_check_license_response');
delete_transient('trp_debug_activate_license_request');
delete_site_transient('trp_debug_activate_license_request');
delete_transient('trp_debug_activate_license_response');
delete_site_transient('trp_debug_activate_license_response');
delete_transient('trp_machine_translation_counter_safety_reset');
delete_site_transient('trp_machine_translation_counter_safety_reset');
delete_transient('trp_mtapi_cached_quota');
delete_site_transient('trp_mtapi_cached_quota');
delete_transient('trp_checked_if_site_meets_conditions_for_review');
delete_site_transient('trp_checked_if_site_meets_conditions_for_review');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_processed_original_string_meta_post_id_for_%', '_site_transient_processed_original_string_meta_post_id_for_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tp_default_language_wc_permalink_structure_%', '_site_transient_tp_default_language_wc_permalink_structure_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tp_current_language_wc_permalink_structure_%', '_site_transient_tp_current_language_wc_permalink_structure_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('trp_onboarding_previous_step');
delete_site_transient('trp_onboarding_previous_step');
delete_transient('trp_onboarding_errors');
delete_site_transient('trp_onboarding_errors');
delete_transient('trp_gettext_search');
delete_site_transient('trp_gettext_search');

// Clear Cron Jobs
wp_clear_scheduled_hook('trp_plugin_optin_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trp_dismissed_gettext_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trp_dismissed_gettext_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trp_dismissed_gettext_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trp_dismissed_gettext_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trp_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trp_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trp_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trp_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trp_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trp_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trp_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trp_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trp_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trp_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trp_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trp_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trp_dismissed_admin_bar_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trp_dismissed_admin_bar_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trp_dismissed_admin_bar_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trp_dismissed_admin_bar_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trp_email_course_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trp_email_course_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trp_email_course_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trp_email_course_dismissed' ) );

