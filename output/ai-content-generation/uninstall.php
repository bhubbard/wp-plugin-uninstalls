<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
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
delete_option('wpwand_pro_tala_status');
delete_site_option('wpwand_pro_tala_status');
delete_option('wpwand_api_key');
delete_site_option('wpwand_api_key');
delete_option('wpwand_claude_api_key');
delete_site_option('wpwand_claude_api_key');
delete_option('wpwand_deepseek_api_key');
delete_site_option('wpwand_deepseek_api_key');
delete_option('wpwand_openrouter_api_key');
delete_site_option('wpwand_openrouter_api_key');
delete_option('wpwand_model');
delete_site_option('wpwand_model');
delete_option('wpwand_language');
delete_site_option('wpwand_language');
delete_option('toggler_position');
delete_site_option('toggler_position');
delete_option('wpwand_temperature');
delete_site_option('wpwand_temperature');
delete_option('wpwand_frequency');
delete_site_option('wpwand_frequency');
delete_option('wpwand_max_tokens');
delete_site_option('wpwand_max_tokens');
delete_option('wpwand_presence_penalty');
delete_site_option('wpwand_presence_penalty');
delete_option('wpwand_hide_ai_bar_gutenberg');
delete_site_option('wpwand_hide_ai_bar_gutenberg');
delete_option('wpwand_data');
delete_site_option('wpwand_data');
delete_option('wpwand_custom_data');
delete_site_option('wpwand_custom_data');
delete_option('wpwand_pro_activated');
delete_site_option('wpwand_pro_activated');
delete_option('wpwand_busines_details');
delete_site_option('wpwand_busines_details');
delete_option('wpwand_targated_customer');
delete_site_option('wpwand_targated_customer');
delete_option('wpwand_promo_notice_dismiss');
delete_site_option('wpwand_promo_notice_dismiss');
delete_option('wpwand_pgc_total_bulk_generated');
delete_site_option('wpwand_pgc_total_bulk_generated');
delete_option('wpwand_pgc_limit');
delete_site_option('wpwand_pgc_limit');
delete_option('wdelmtr_model');
delete_site_option('wdelmtr_model');
delete_option('wdelmtr_temperature');
delete_site_option('wdelmtr_temperature');
delete_option('wdelmtr_max_tokens');
delete_site_option('wdelmtr_max_tokens');
delete_option('wdelmtr_frequency');
delete_site_option('wdelmtr_frequency');
delete_option('wdelmtr_presence_penalty');
delete_site_option('wdelmtr_presence_penalty');
delete_option('wpwand_activation_redirect');
delete_site_option('wpwand_activation_redirect');

// Delete Transients
delete_transient('wpwand_data_transient');
delete_site_transient('wpwand_data_transient');
delete_transient('wpwand_pgc_limit_expiration');
delete_site_transient('wpwand_pgc_limit_expiration');
delete_transient('wpwand_openai_models');
delete_site_transient('wpwand_openai_models');
delete_transient('wpwand_claude_models');
delete_site_transient('wpwand_claude_models');
delete_transient('wpwand_openrouter_model_list');
delete_site_transient('wpwand_openrouter_model_list');

// Clear Cron Jobs

