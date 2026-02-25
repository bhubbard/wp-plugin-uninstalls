<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickpress_ai_serpstack_api_key');
delete_site_option('quickpress_ai_serpstack_api_key');
delete_option('quickpress_ai_api_key');
delete_site_option('quickpress_ai_api_key');
delete_option('quickpress_ai_selected_model');
delete_site_option('quickpress_ai_selected_model');
delete_option('quickpress_ai_system_prompt');
delete_site_option('quickpress_ai_system_prompt');
delete_option('quickpress_ai_system_prompt_option');
delete_site_option('quickpress_ai_system_prompt_option');
delete_option('quickpress_ai_title_prompt_template');
delete_site_option('quickpress_ai_title_prompt_template');
delete_option('quickpress_ai_content_prompt_template');
delete_site_option('quickpress_ai_content_prompt_template');
delete_option('quickpress_ai_excerpt_prompt_template');
delete_site_option('quickpress_ai_excerpt_prompt_template');
delete_option('quickpress_ai_temperature');
delete_site_option('quickpress_ai_temperature');
delete_option('quickpress_ai_frequency_penalty');
delete_site_option('quickpress_ai_frequency_penalty');
delete_option('quickpress_ai_presence_penalty');
delete_site_option('quickpress_ai_presence_penalty');
delete_option('quickpress_ai_generate_timeout');
delete_site_option('quickpress_ai_generate_timeout');
delete_option('quickpress_ai_encryption_key');
delete_site_option('quickpress_ai_encryption_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_timestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('quickpress_ai_serpstack_api_usage');
delete_site_option('quickpress_ai_serpstack_api_usage');
delete_option('quickpress_ai_serpstack_plan');
delete_site_option('quickpress_ai_serpstack_plan');

