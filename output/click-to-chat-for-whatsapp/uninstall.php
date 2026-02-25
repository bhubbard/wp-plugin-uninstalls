<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccw_options');
delete_site_option('ccw_options');
delete_option('ht_ctc_switch');
delete_site_option('ht_ctc_switch');
delete_option('ht_ctc_othersettings');
delete_site_option('ht_ctc_othersettings');
delete_option('ht_ctc_s1');
delete_site_option('ht_ctc_s1');
delete_option('ht_ctc_admin_pages');
delete_site_option('ht_ctc_admin_pages');
delete_option('ht_ctc_chat_options');
delete_site_option('ht_ctc_chat_options');
delete_option('ht_ctc_notices');
delete_site_option('ht_ctc_notices');
delete_option('ht_ctc_pro_plugin_details');
delete_site_option('ht_ctc_pro_plugin_details');
delete_option('ht_ctc_group');
delete_site_option('ht_ctc_group');
delete_option('ht_ctc_share');
delete_site_option('ht_ctc_share');
delete_option('ht_ctc_plugin_details');
delete_site_option('ht_ctc_plugin_details');
delete_option('ht_ctc_admin_demo_active');
delete_site_option('ht_ctc_admin_demo_active');
delete_option('ht_ctc_greetings_options');
delete_site_option('ht_ctc_greetings_options');
delete_option('ht_ctc_greetings_settings');
delete_site_option('ht_ctc_greetings_settings');
delete_option('ht_ctc_cs_options');
delete_site_option('ht_ctc_cs_options');
delete_option('ht_ctc_s2');
delete_site_option('ht_ctc_s2');
delete_option('ht_ctc_s3');
delete_site_option('ht_ctc_s3');
delete_option('ht_ctc_s3_1');
delete_site_option('ht_ctc_s3_1');
delete_option('ht_ctc_s4');
delete_site_option('ht_ctc_s4');
delete_option('ht_ctc_s5');
delete_site_option('ht_ctc_s5');
delete_option('ht_ctc_s6');
delete_site_option('ht_ctc_s6');
delete_option('ht_ctc_s7');
delete_site_option('ht_ctc_s7');
delete_option('ht_ctc_s7_1');
delete_site_option('ht_ctc_s7_1');
delete_option('ht_ctc_s8');
delete_site_option('ht_ctc_s8');
delete_option('ht_ctc_s99');
delete_site_option('ht_ctc_s99');
delete_option('ht_ctc_code_blocks');
delete_site_option('ht_ctc_code_blocks');
delete_option('ht_ctc_one_time');
delete_site_option('ht_ctc_one_time');
delete_option('ht_ctc_woo_options');
delete_site_option('ht_ctc_woo_options');
delete_option('ht_ctc_main_options');
delete_site_option('ht_ctc_main_options');
delete_option('ccw_options_cs');
delete_site_option('ccw_options_cs');
delete_option('ht_ccw_ga');
delete_site_option('ht_ccw_ga');
delete_option('ht_ccw_fb');
delete_site_option('ht_ccw_fb');
delete_option('ht_ctc_greetings_1');
delete_site_option('ht_ctc_greetings_1');
delete_option('ht_ctc_greetings_2');
delete_site_option('ht_ctc_greetings_2');
delete_option('ccw_plugin_details');
delete_site_option('ccw_plugin_details');

// Delete Transients
delete_transient('ht_ctc_cache_cleared_notice');
delete_site_transient('ht_ctc_cache_cleared_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ht_ctc_pagelevel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ht_ctc_pagelevel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ht_ctc_pagelevel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ht_ctc_pagelevel' ) );

