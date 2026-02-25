<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swptls_ai_provider');
delete_site_option('swptls_ai_provider');
delete_option('swptls_max_tokens');
delete_site_option('swptls_max_tokens');
delete_option('swptls_temperature');
delete_site_option('swptls_temperature');
delete_option('swptls_frequency_penalty');
delete_site_option('swptls_frequency_penalty');
delete_option('swptls_system_prompt');
delete_site_option('swptls_system_prompt');
delete_option('swptls_gemini_top_p');
delete_site_option('swptls_gemini_top_p');
delete_option('swptls_gemini_top_k');
delete_site_option('swptls_gemini_top_k');
delete_option('link_support_code_has_run');
delete_site_option('link_support_code_has_run');
delete_option('img_link_pro_support_has_run');
delete_site_option('img_link_pro_support_has_run');
delete_option('theme_data_update');
delete_site_option('theme_data_update');
delete_option('swptls_pagination_data_migrate');
delete_site_option('swptls_pagination_data_migrate');
delete_option('swptls_conditional_mode_migrate');
delete_site_option('swptls_conditional_mode_migrate');
delete_option('link_support_mode');
delete_site_option('link_support_mode');
delete_option('swptls_pro_appsero_fix_applied');
delete_site_option('swptls_pro_appsero_fix_applied');
delete_option('swptls_pro_appsero_fix_declined');
delete_site_option('swptls_pro_appsero_fix_declined');
delete_option('gswptsReviewNotice');
delete_site_option('gswptsReviewNotice');
delete_option('gswptsAffiliateNotice');
delete_site_option('gswptsAffiliateNotice');
delete_option('gswptsUpgradeNotice');
delete_site_option('gswptsUpgradeNotice');
delete_option('deafaultNoticeInterval');
delete_site_option('deafaultNoticeInterval');
delete_option('deafaultAffiliateInterval');
delete_site_option('deafaultAffiliateInterval');
delete_option('deafaultUpgradeInterval');
delete_site_option('deafaultUpgradeInterval');
delete_option('asynchronous_loading');
delete_site_option('asynchronous_loading');
delete_option('css_code_value');
delete_site_option('css_code_value');
delete_option('script_support_mode');
delete_site_option('script_support_mode');
delete_option('timeout_values');
delete_site_option('timeout_values');
delete_option('cache_timestamp');
delete_site_option('cache_timestamp');
delete_option('swptls_openai_api_key');
delete_site_option('swptls_openai_api_key');
delete_option('swptls_openai_model');
delete_site_option('swptls_openai_model');
delete_option('swptls_gemini_api_key');
delete_site_option('swptls_gemini_api_key');
delete_option('swptls_gemini_model');
delete_site_option('swptls_gemini_model');
delete_option('swptls_cache_duration');
delete_site_option('swptls_cache_duration');
delete_option('swptls_ran_setup_wizard');
delete_site_option('swptls_ran_setup_wizard');
delete_option('swptls_cta_notice_dismissed');
delete_site_option('swptls_cta_notice_dismissed');
delete_option('swptls_cta_notice_tabs_dismissed');
delete_site_option('swptls_cta_notice_tabs_dismissed');
delete_option('show_get_start_page');
delete_site_option('show_get_start_page');
delete_option('swptls_pro_appsero_notice_shown');
delete_site_option('swptls_pro_appsero_notice_shown');
delete_option('gswpts_activation_redirect');
delete_site_option('gswpts_activation_redirect');
delete_option('gswpts_first_time_install');
delete_site_option('gswpts_first_time_install');
delete_option('gswptsActivationTime');
delete_site_option('gswptsActivationTime');
delete_option('gswptsManageTabs');
delete_site_option('gswptsManageTabs');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs

