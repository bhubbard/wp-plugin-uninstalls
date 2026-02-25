<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_qt_redirects_map');
delete_site_option('_qt_redirects_map');
delete_option('qtranslate_default_language');
delete_site_option('qtranslate_default_language');
delete_option('qtranslate_enabled_languages');
delete_site_option('qtranslate_enabled_languages');
delete_option('qtranslate_url_mode');
delete_site_option('qtranslate_url_mode');
delete_option('_qt_import_status');
delete_site_option('_qt_import_status');
delete_option('qtranslate_term_name');
delete_site_option('qtranslate_term_name');
delete_option('temp_qtranslate_terms');
delete_site_option('temp_qtranslate_terms');
delete_option('temp_hierarchy_terms');
delete_site_option('temp_hierarchy_terms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_children' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qtranslate_language_names');
delete_site_option('qtranslate_language_names');
delete_option('_qt_importer_clean_has_run');
delete_site_option('_qt_importer_clean_has_run');
delete_option('qtranslate_flag_location');
delete_site_option('qtranslate_flag_location');
delete_option('qtranslate_flags');
delete_site_option('qtranslate_flags');
delete_option('qtranslate_locales');
delete_site_option('qtranslate_locales');
delete_option('qtranslate_na_messages');
delete_site_option('qtranslate_na_messages');
delete_option('qtranslate_date_formats');
delete_site_option('qtranslate_date_formats');
delete_option('qtranslate_time_formats');
delete_site_option('qtranslate_time_formats');
delete_option('qtranslate_use_strftime');
delete_site_option('qtranslate_use_strftime');
delete_option('qtranslate_ignore_file_types');
delete_site_option('qtranslate_ignore_file_types');
delete_option('qtranslate_detect_browser_language');
delete_site_option('qtranslate_detect_browser_language');
delete_option('qtranslate_hide_untranslated');
delete_site_option('qtranslate_hide_untranslated');
delete_option('qtranslate_auto_update_mo');
delete_site_option('qtranslate_auto_update_mo');
delete_option('qtranslate_next_update_mo');
delete_site_option('qtranslate_next_update_mo');
delete_option('qtranslate_hide_default_language');
delete_site_option('qtranslate_hide_default_language');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qt_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qt_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qt_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qt_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qt_cleaned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qt_cleaned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qt_cleaned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qt_cleaned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qt_links_fixed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qt_links_fixed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qt_links_fixed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qt_links_fixed' ) );

