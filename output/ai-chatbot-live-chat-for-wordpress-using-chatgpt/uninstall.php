<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_chatbot_adminsettings');
delete_site_option('ai_chatbot_adminsettings');
delete_option('ai_chatbot_question_action');
delete_site_option('ai_chatbot_question_action');
delete_option('ai_chatbot_rating_action');
delete_site_option('ai_chatbot_rating_action');
delete_option('ai_chatbot_chatbot_widget');
delete_site_option('ai_chatbot_chatbot_widget');
delete_option('ai_chatbot_botdata_ids');
delete_site_option('ai_chatbot_botdata_ids');
delete_option('ai_chatbot_is_public');
delete_site_option('ai_chatbot_is_public');
delete_option('ai_chatbot_get_script');
delete_site_option('ai_chatbot_get_script');
delete_option('ai_chatbot_otp');
delete_site_option('ai_chatbot_otp');
delete_option('ai_chatbot_startup');
delete_site_option('ai_chatbot_startup');
delete_option('ai_chatbot_current_page');
delete_site_option('ai_chatbot_current_page');
delete_option('ai_chatbot_getotp');
delete_site_option('ai_chatbot_getotp');
delete_option('ai_chatbot_otpcheck');
delete_site_option('ai_chatbot_otpcheck');
delete_option('ai_chatbot_userplan');
delete_site_option('ai_chatbot_userplan');
delete_option('ai_chatbot_add_website');
delete_site_option('ai_chatbot_add_website');
delete_option('ai_chatbot_test_get_res1');
delete_site_option('ai_chatbot_test_get_res1');
delete_option('ai_chatbot_r_req');
delete_site_option('ai_chatbot_r_req');
delete_option('ai_chatbot_test_1');
delete_site_option('ai_chatbot_test_1');
delete_option('ai_chatbot_test_2');
delete_site_option('ai_chatbot_test_2');
delete_option('ai_chatbot_test_3');
delete_site_option('ai_chatbot_test_3');
delete_option('ai_chatbot_botsend_last_response');
delete_site_option('ai_chatbot_botsend_last_response');
delete_option('ai_chatbot_widget');
delete_site_option('ai_chatbot_widget');

// Clear Cron Jobs
wp_clear_scheduled_hook('Robofy_Ai_Chatbot_send_data_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );

