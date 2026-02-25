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
delete_option('hclpage');
delete_site_option('hclpage');
delete_option('sld_embed_credit_title');
delete_site_option('sld_embed_credit_title');
delete_option('sld_embed_credit_link');
delete_site_option('sld_embed_credit_link');
delete_option('sld_enable_search');
delete_site_option('sld_enable_search');
delete_option('sld_lan_live_search');
delete_site_option('sld_lan_live_search');
delete_option('sld_add_new_button');
delete_site_option('sld_add_new_button');
delete_option('sld_add_item_link');
delete_site_option('sld_add_item_link');
delete_option('sld_lan_add_link');
delete_site_option('sld_lan_add_link');
delete_option('sld_enable_top_part');
delete_site_option('sld_enable_top_part');
delete_option('sld_lan_share_list');
delete_site_option('sld_lan_share_list');
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
delete_option('sld_enable_rtl');
delete_site_option('sld_enable_rtl');
delete_option('sld_no_results_found');
delete_site_option('sld_no_results_found');
delete_option('sld_enable_click_tracking');
delete_site_option('sld_enable_click_tracking');
delete_option('sld_ot_convrt');
delete_site_option('sld_ot_convrt');
delete_option('option_tree');
delete_site_option('option_tree');
delete_option('sld_enable_upvote');
delete_site_option('sld_enable_upvote');
delete_option('sld_enable_dark_mode');
delete_site_option('sld_enable_dark_mode');
delete_option('sld_lan_enable_dark_mode');
delete_site_option('sld_lan_enable_dark_mode');
delete_option('sld_lan_dark_mode_on');
delete_site_option('sld_lan_dark_mode_on');
delete_option('sld_lan_light_mode_on');
delete_site_option('sld_lan_light_mode_on');
delete_option('sld_enable_scroll_to_top');
delete_site_option('sld_enable_scroll_to_top');
delete_option('sld_custom_style');
delete_site_option('sld_custom_style');
delete_option('sld_custom_js');
delete_site_option('sld_custom_js');
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
delete_option('sld_direct_link_img_upload_for_list_item');
delete_site_option('sld_direct_link_img_upload_for_list_item');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcopd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcopd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcopd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcopd_list_item01' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcopd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcopd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcopd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcopd_list_conf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sld_add_block' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sld_add_block' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sld_add_block' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sld_add_block' ) );

