<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfef_usage_share_data');
delete_site_option('cfef_usage_share_data');
delete_option('cfkef_enabled_elements');
delete_site_option('cfkef_enabled_elements');
delete_option('cfkef_toggle_all');
delete_site_option('cfkef_toggle_all');
delete_option('cfkef_enable_elementor_pro_form');
delete_site_option('cfkef_enable_elementor_pro_form');
delete_option('cfkef_enable_hello_plus');
delete_site_option('cfkef_enable_hello_plus');
delete_option('cfkef_enable_formkit_builder');
delete_site_option('cfkef_enable_formkit_builder');
delete_option('cfl_plugin_initialized');
delete_site_option('cfl_plugin_initialized');
delete_option('CFL_initial_save_version');
delete_site_option('CFL_initial_save_version');
delete_option('cfl-install-date');
delete_site_option('cfl-install-date');
delete_option('cfef_formdb_marketing_dismissed');
delete_site_option('cfef_formdb_marketing_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-install-by' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cfl_review_notice_dismiss');
delete_site_option('cfl_review_notice_dismiss');
delete_option('cfkef-defaultPlugin');
delete_site_option('cfkef-defaultPlugin');
delete_option('cpfm_opt_in_choice_cool_forms');
delete_site_option('cpfm_opt_in_choice_cool_forms');
delete_option('cfl_site_key_v2');
delete_site_option('cfl_site_key_v2');
delete_option('cfl_secret_key_v2');
delete_site_option('cfl_secret_key_v2');
delete_option('cfl_site_key_v3');
delete_site_option('cfl_site_key_v3');
delete_option('cfl_secret_key_v3');
delete_site_option('cfl_secret_key_v3');
delete_option('cfl_threshold_v3');
delete_site_option('cfl_threshold_v3');
delete_option('cfefp_redirect_conditionally');
delete_site_option('cfefp_redirect_conditionally');
delete_option('cfefp_email_conditionally');
delete_site_option('cfefp_email_conditionally');
delete_option('cfefp_mailchimp_conditionally');
delete_site_option('cfefp_mailchimp_conditionally');
delete_option('cfefp_getresponse_conditionally');
delete_site_option('cfefp_getresponse_conditionally');
delete_option('cfefp_webhook_conditionally');
delete_site_option('cfefp_webhook_conditionally');
delete_option('cfefp_whatsapp_conditionally');
delete_site_option('cfefp_whatsapp_conditionally');
delete_option('cfkef_geo_provider');
delete_site_option('cfkef_geo_provider');
delete_option('cfkef_country_code_api_key');
delete_site_option('cfkef_country_code_api_key');
delete_option('cfkef_country_code_non_ipapi_api_key');
delete_site_option('cfkef_country_code_non_ipapi_api_key');
delete_option('cfefp_cdn_image');
delete_site_option('cfefp_cdn_image');
delete_option('cfefp_cloudflare_site_key');
delete_site_option('cfefp_cloudflare_site_key');
delete_option('cfefp_cloudflare_secret_key');
delete_site_option('cfefp_cloudflare_secret_key');
delete_option('cfefp_h_site_key');
delete_site_option('cfefp_h_site_key');
delete_option('cfefp_h_secret_key');
delete_site_option('cfefp_h_secret_key');
delete_option('eef-v');
delete_site_option('eef-v');
delete_option('eef-type');
delete_site_option('eef-type');
delete_option('eef-installDate');
delete_site_option('eef-installDate');
delete_option('ccfef_review_notice_dismiss');
delete_site_option('ccfef_review_notice_dismiss');
delete_option('cfkef_elementor_notice_dismiss');
delete_site_option('cfkef_elementor_notice_dismiss');

// Clear Cron Jobs
wp_clear_scheduled_hook('cfl_extra_data_update');
wp_clear_scheduled_hook('cfefp_extra_data_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_entry_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_entry_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_entry_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_entry_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_element_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_element_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_element_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_element_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_form_action_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_form_action_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_form_action_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_form_action_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cfkef_entry_view_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cfkef_entry_view_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cfkef_entry_view_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cfkef_entry_view_status' ) );

