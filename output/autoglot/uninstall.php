<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoglot_translation_default_language');
delete_site_option('autoglot_translation_default_language');
delete_option('autoglot_setup_complete');
delete_site_option('autoglot_setup_complete');
delete_option('autoglot_translation_API_key');
delete_site_option('autoglot_translation_API_key');
delete_option('autoglot_translation_enable');
delete_site_option('autoglot_translation_enable');
delete_option('autoglot_admin_notice');
delete_site_option('autoglot_admin_notice');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('autoglot_wpcount');
delete_site_option('autoglot_wpcount');
delete_option('autoglot_countwords');
delete_site_option('autoglot_countwords');
delete_option('autoglot_countactivewords');
delete_site_option('autoglot_countactivewords');
delete_option('autoglot_stats_updated');
delete_site_option('autoglot_stats_updated');
delete_option('autoglot_translation_adminonly');
delete_site_option('autoglot_translation_adminonly');
delete_option('autoglot_translation_floatbox');
delete_site_option('autoglot_translation_floatbox');
delete_option('autoglot_translation_popup_switcher');
delete_site_option('autoglot_translation_popup_switcher');
delete_option('autoglot_translation_floatbox_position');
delete_site_option('autoglot_translation_floatbox_position');
delete_option('autoglot_translation_language_names');
delete_site_option('autoglot_translation_language_names');
delete_option('autoglot_translation_hreflangs');
delete_site_option('autoglot_translation_hreflangs');
delete_option('autoglot_translation_comments_translate ');
delete_site_option('autoglot_translation_comments_translate ');
delete_option('autoglot_translation_comments_same_language');
delete_site_option('autoglot_translation_comments_same_language');
delete_option('autoglot_translation_custom_titles');
delete_site_option('autoglot_translation_custom_titles');
delete_option('autoglot_translation_skip_caching');
delete_site_option('autoglot_translation_skip_caching');
delete_option('autoglot_translation_widget_signature');
delete_site_option('autoglot_translation_widget_signature');
delete_option('autoglot_translation_translate_urls');
delete_site_option('autoglot_translation_translate_urls');
delete_option('autoglot_translation_editors_edit');
delete_site_option('autoglot_translation_editors_edit');
delete_option('autoglot_translation_advanced_search');
delete_site_option('autoglot_translation_advanced_search');
delete_option('autoglot_translation_sitemap_priority');
delete_site_option('autoglot_translation_sitemap_priority');
delete_option('autoglot_translation_repeat_balance');
delete_site_option('autoglot_translation_repeat_balance');
delete_option('autoglot_translation_active_languages');
delete_site_option('autoglot_translation_active_languages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autoglot_translation_language_flags_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('autoglot_translation_manual_strings');
delete_site_option('autoglot_translation_manual_strings');
delete_option('autoglot_translation_add_lngcode');
delete_site_option('autoglot_translation_add_lngcode');

// Delete Transients
delete_transient('text_replacement_settings_errors');
delete_site_transient('text_replacement_settings_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autoglot_hide_translation_plugins_notice_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autoglot_hide_translation_plugins_notice_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autoglot_hide_translation_plugins_notice_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autoglot_hide_translation_plugins_notice_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autoglot_comment_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autoglot_comment_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autoglot_comment_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autoglot_comment_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_autoglot_textrepl_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_autoglot_textrepl_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_autoglot_textrepl_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_autoglot_textrepl_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_autoglot_menu_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_autoglot_menu_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_autoglot_menu_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_autoglot_menu_item' ) );

