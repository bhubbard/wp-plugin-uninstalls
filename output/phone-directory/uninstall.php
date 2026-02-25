<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pdhclpage');
delete_site_option('pdhclpage');
delete_option('pd_add_new_button');
delete_site_option('pd_add_new_button');
delete_option('pd_add_item_link');
delete_site_option('pd_add_item_link');
delete_option('pd_lan_add_link');
delete_site_option('pd_lan_add_link');
delete_option('pd_lan_share_list');
delete_site_option('pd_lan_share_list');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pd_map_open_street_map');
delete_site_option('pd_map_open_street_map');
delete_option('sbd_map_api_key');
delete_site_option('sbd_map_api_key');
delete_option('pd_enable_rtl');
delete_site_option('pd_enable_rtl');
delete_option('pd_lan_view_site');
delete_site_option('pd_lan_view_site');
delete_option('pd_lan_gdpr_policies');
delete_site_option('pd_lan_gdpr_policies');
delete_option('pd_lan_gdpr_load_map_lang');
delete_site_option('pd_lan_gdpr_load_map_lang');
delete_option('pd_enable_gdpr_policies');
delete_site_option('pd_enable_gdpr_policies');
delete_option('pd_map_places_api_new');
delete_site_option('pd_map_places_api_new');
delete_option('sbd_ot_convrt');
delete_site_option('sbd_ot_convrt');
delete_option('option_tree');
delete_site_option('option_tree');
delete_option('pd_enable_dark_mode');
delete_site_option('pd_enable_dark_mode');
delete_option('pd_lan_enable_dark_mode');
delete_site_option('pd_lan_enable_dark_mode');
delete_option('pd_lan_dark_mode_on');
delete_site_option('pd_lan_dark_mode_on');
delete_option('pd_lan_light_mode_on');
delete_site_option('pd_lan_light_mode_on');
delete_option('pd_custom_style');
delete_site_option('pd_custom_style');
delete_option('pd_custom_js');
delete_site_option('pd_custom_js');
delete_option('pd_enable_top_part');
delete_site_option('pd_enable_top_part');
delete_option('pd_lan_provide_location');
delete_site_option('pd_lan_provide_location');
delete_option('pd_lan_distance_value');
delete_site_option('pd_lan_distance_value');
delete_option('pd_lan_no_result_found');
delete_site_option('pd_lan_no_result_found');
delete_option('sbd_google_map_id');
delete_site_option('sbd_google_map_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rating_dismiss' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rating_active_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcpnd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcpnd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcpnd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcpnd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcpd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcpd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcpd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcpd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcpd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcpd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcpd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcpd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcpnd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcpnd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcpnd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcpnd_list_conf' ) );

