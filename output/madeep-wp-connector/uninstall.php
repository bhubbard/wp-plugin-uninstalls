<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('madeep_username');
delete_site_option('madeep_username');
delete_option('madeep_password');
delete_site_option('madeep_password');
delete_option('madeep_debug_mode');
delete_site_option('madeep_debug_mode');
delete_option('madeep_debug_quantity');
delete_site_option('madeep_debug_quantity');
delete_option('madeep_default_language');
delete_site_option('madeep_default_language');
delete_option('madeep_enable_write');
delete_site_option('madeep_enable_write');
delete_option('madeep_download_gallery');
delete_site_option('madeep_download_gallery');
delete_option('madeep_data_type');
delete_site_option('madeep_data_type');
delete_option('madeep_time_last_update_hotels');
delete_site_option('madeep_time_last_update_hotels');
delete_option('madeep_time_last_update_ecom');
delete_site_option('madeep_time_last_update_ecom');
delete_option('madeep_time_last_update_offers');
delete_site_option('madeep_time_last_update_offers');
delete_option('madeep_time_last_update_services');
delete_site_option('madeep_time_last_update_services');
delete_option('madeep_active_languages');
delete_site_option('madeep_active_languages');
delete_option('madeep_active_multilanguages');
delete_site_option('madeep_active_multilanguages');
delete_option('madeep_template_hotels');
delete_site_option('madeep_template_hotels');
delete_option('madeep_template_ecoms');
delete_site_option('madeep_template_ecoms');
delete_option('madeep_template_services');
delete_site_option('madeep_template_services');
delete_option('madeep_template_offers');
delete_site_option('madeep_template_offers');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'madeep_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'madeep_category_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('madeep_allow_structure_tag');
delete_site_option('madeep_allow_structure_tag');
delete_option('madeep_allow_filters_tag');
delete_site_option('madeep_allow_filters_tag');
delete_option('madeep_allow_lang_tag');
delete_site_option('madeep_allow_lang_tag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('madeep_allow_single_sync');
delete_site_option('madeep_allow_single_sync');
delete_option('madeep_category_hotels');
delete_site_option('madeep_category_hotels');
delete_option('madeep_category_ecoms');
delete_site_option('madeep_category_ecoms');
delete_option('madeep_category_services');
delete_site_option('madeep_category_services');
delete_option('madeep_category_offers');
delete_site_option('madeep_category_offers');
delete_option('madeep_google_api_key');
delete_site_option('madeep_google_api_key');
delete_option('madeep_post_template_css');
delete_site_option('madeep_post_template_css');
delete_option('madeep_post_template_js');
delete_site_option('madeep_post_template_js');
delete_option('madeep_write_hotels_page');
delete_site_option('madeep_write_hotels_page');
delete_option('madeep_write_ecoms_page');
delete_site_option('madeep_write_ecoms_page');
delete_option('madeep_write_services_page');
delete_site_option('madeep_write_services_page');
delete_option('madeep_write_offers_page');
delete_site_option('madeep_write_offers_page');
delete_option('madeep_time_last_update_hotels_pages');
delete_site_option('madeep_time_last_update_hotels_pages');
delete_option('madeep_time_last_update_hotels_list');
delete_site_option('madeep_time_last_update_hotels_list');
delete_option('madeep_time_last_update_ecoms');
delete_site_option('madeep_time_last_update_ecoms');
delete_option('madeep_time_last_update_ecoms_pages');
delete_site_option('madeep_time_last_update_ecoms_pages');
delete_option('madeep_time_last_update_ecoms_list');
delete_site_option('madeep_time_last_update_ecoms_list');
delete_option('madeep_time_last_update_services_pages');
delete_site_option('madeep_time_last_update_services_pages');
delete_option('madeep_time_last_update_services_list');
delete_site_option('madeep_time_last_update_services_list');
delete_option('madeep_time_last_update_offers_pages');
delete_site_option('madeep_time_last_update_offers_pages');
delete_option('madeep_time_last_update_offers_list');
delete_site_option('madeep_time_last_update_offers_list');
delete_option('madeep_sync_key');
delete_site_option('madeep_sync_key');
delete_option('madeep_write_hotel_page');
delete_site_option('madeep_write_hotel_page');
delete_option('madeep_time_last_update_hotels_page');
delete_site_option('madeep_time_last_update_hotels_page');
delete_option('madeep_time_last_update_ecom_list');
delete_site_option('madeep_time_last_update_ecom_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('madeep_refresh_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_galleryIDs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_galleryIDs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_galleryIDs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_galleryIDs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_featuredImageID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_featuredImageID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_featuredImageID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_featuredImageID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'madeep_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'madeep_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'madeep_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'madeep_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_id_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_id_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_id_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_id_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'madeep_id_container' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'madeep_id_container' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'madeep_id_container' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'madeep_id_container' ) );

