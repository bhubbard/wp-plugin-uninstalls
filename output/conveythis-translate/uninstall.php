<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is_active_domain');
delete_site_option('is_active_domain');
delete_option('style_change_flag');
delete_site_option('style_change_flag');
delete_option('style_change_language');
delete_site_option('style_change_language');
delete_option('api_key');
delete_site_option('api_key');
delete_option('source_language');
delete_site_option('source_language');
delete_option('target_languages');
delete_site_option('target_languages');
delete_option('target_languages_translations');
delete_site_option('target_languages_translations');
delete_option('default_language');
delete_site_option('default_language');
delete_option('style_flag');
delete_site_option('style_flag');
delete_option('style_text');
delete_site_option('style_text');
delete_option('style_position_vertical');
delete_site_option('style_position_vertical');
delete_option('style_position_horizontal');
delete_site_option('style_position_horizontal');
delete_option('style_indenting_vertical');
delete_site_option('style_indenting_vertical');
delete_option('style_indenting_horizontal');
delete_site_option('style_indenting_horizontal');
delete_option('auto_translate');
delete_site_option('auto_translate');
delete_option('hide_conveythis_logo');
delete_site_option('hide_conveythis_logo');
delete_option('dynamic_translation');
delete_site_option('dynamic_translation');
delete_option('translate_media');
delete_site_option('translate_media');
delete_option('translate_document');
delete_site_option('translate_document');
delete_option('translate_links');
delete_site_option('translate_links');
delete_option('translate_structured_data');
delete_site_option('translate_structured_data');
delete_option('change_direction');
delete_site_option('change_direction');
delete_option('conveythis_clear_cache');
delete_site_option('conveythis_clear_cache');
delete_option('conveythis_select_region');
delete_site_option('conveythis_select_region');
delete_option('alternate');
delete_site_option('alternate');
delete_option('accept_language');
delete_site_option('accept_language');
delete_option('blockpages');
delete_site_option('blockpages');
delete_option('show_javascript');
delete_site_option('show_javascript');
delete_option('style_position_type');
delete_site_option('style_position_type');
delete_option('style_position_vertical_custom');
delete_site_option('style_position_vertical_custom');
delete_option('style_selector_id');
delete_site_option('style_selector_id');
delete_option('url_structure');
delete_site_option('url_structure');
delete_option('style_background_color');
delete_site_option('style_background_color');
delete_option('style_hover_color');
delete_site_option('style_hover_color');
delete_option('style_border_color');
delete_site_option('style_border_color');
delete_option('style_text_color');
delete_site_option('style_text_color');
delete_option('style_corner_type');
delete_site_option('style_corner_type');
delete_option('custom_css_json');
delete_site_option('custom_css_json');
delete_option('style_widget');
delete_site_option('style_widget');
delete_option('conveythis_system_links');
delete_site_option('conveythis_system_links');
delete_option('use_trailing_slash');
delete_site_option('use_trailing_slash');
delete_option('is_translated');
delete_site_option('is_translated');
delete_option('conveythis_new_user');
delete_site_option('conveythis_new_user');
delete_option('no_translate_element_id');
delete_site_option('no_translate_element_id');
delete_option('no_translate_element_classes');
delete_site_option('no_translate_element_classes');
delete_option('mb_admin_notice');
delete_site_option('mb_admin_notice');

// Delete Transients
delete_transient('convey_permalink_structure');
delete_site_transient('convey_permalink_structure');

// Clear Cron Jobs
wp_clear_scheduled_hook('ConveyThisClearCache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'convey_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'convey_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'convey_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'convey_meta' ) );

