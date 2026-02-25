<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etm_advanced_settings');
delete_site_option('etm_advanced_settings');
delete_option('etm_settings');
delete_site_option('etm_settings');
delete_option('etm_db_errors');
delete_site_option('etm_db_errors');
delete_option('etm_machine_translation_settings');
delete_site_option('etm_machine_translation_settings');
delete_option('etm_db_stored_data');
delete_site_option('etm_db_stored_data');
delete_option('etm_updated_database_gettext_original_id_update');
delete_site_option('etm_updated_database_gettext_original_id_update');
delete_option('etm_plugin_version');
delete_site_option('etm_plugin_version');
delete_option('etm_show_error_db_message');
delete_site_option('etm_show_error_db_message');
delete_option('etm_remove_duplicate_gettext_rows');
delete_site_option('etm_remove_duplicate_gettext_rows');
delete_option('etm_remove_duplicate_untranslated_gettext_rows');
delete_site_option('etm_remove_duplicate_untranslated_gettext_rows');
delete_option('etm_remove_duplicate_dictionary_rows');
delete_site_option('etm_remove_duplicate_dictionary_rows');
delete_option('etm_remove_duplicate_untranslated_dictionary_rows');
delete_site_option('etm_remove_duplicate_untranslated_dictionary_rows');
delete_option('etm_remove_cdata_original_and_dictionary_rows');
delete_site_option('etm_remove_cdata_original_and_dictionary_rows');
delete_option('etm_remove_untranslated_links_dictionary_rows');
delete_site_option('etm_remove_untranslated_links_dictionary_rows');
delete_option('etm_updated_database_original_id_insert_166');
delete_site_option('etm_updated_database_original_id_insert_166');
delete_option('etm_updated_database_original_id_cleanup_166');
delete_site_option('etm_updated_database_original_id_cleanup_166');
delete_option('etm_updated_database_original_id_update_166');
delete_site_option('etm_updated_database_original_id_update_166');
delete_option('etm_regenerate_original_meta_table');
delete_site_option('etm_regenerate_original_meta_table');
delete_option('etm_clean_original_meta_table');
delete_site_option('etm_clean_original_meta_table');
delete_option('etm_original_strings_table_for_recovery');
delete_site_option('etm_original_strings_table_for_recovery');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('et_divi');
delete_site_option('et_divi');
delete_option('etranslation_multilingual_avg_affiliate_id');
delete_site_option('etranslation_multilingual_avg_affiliate_id');
delete_option('etranslation_multilinguals_affiliate_id');
delete_site_option('etranslation_multilinguals_affiliate_id');
delete_option('etm_mt_domains_othermt');
delete_site_option('etm_mt_domains_othermt');
delete_option('etm_gettext_normalized');
delete_site_option('etm_gettext_normalized');
delete_option('etm_gettext_scan_paths_completed');
delete_site_option('etm_gettext_scan_paths_completed');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_processed_original_string_meta_post_id_for_%', '_site_transient_processed_original_string_meta_post_id_for_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_etm_default_language_wc_permalink_structure_%', '_site_transient_etm_default_language_wc_permalink_structure_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_etm_current_language_wc_permalink_structure_%', '_site_transient_etm_current_language_wc_permalink_structure_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismiss_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'etm_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'etm_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'etm_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'etm_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'etm_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'etm_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'etm_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'etm_always_use_this_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'etm_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'etm_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'etm_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'etm_editor_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );

