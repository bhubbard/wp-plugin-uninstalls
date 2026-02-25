<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nexipilot_faq_provider');
delete_site_option('nexipilot_faq_provider');
delete_option('nexipilot_summary_provider');
delete_site_option('nexipilot_summary_provider');
delete_option('nexipilot_internal_links_provider');
delete_site_option('nexipilot_internal_links_provider');
delete_option('nexipilot_gemini_api_key');
delete_site_option('nexipilot_gemini_api_key');
delete_option('nexipilot_gemini_model');
delete_site_option('nexipilot_gemini_model');
delete_option('nexipilot_claude_api_key');
delete_site_option('nexipilot_claude_api_key');
delete_option('nexipilot_claude_model');
delete_site_option('nexipilot_claude_model');
delete_option('nexipilot_grok_api_key');
delete_site_option('nexipilot_grok_api_key');
delete_option('nexipilot_grok_model');
delete_site_option('nexipilot_grok_model');
delete_option('nexipilot_openai_api_key');
delete_site_option('nexipilot_openai_api_key');
delete_option('nexipilot_openai_model');
delete_site_option('nexipilot_openai_model');
delete_option('nexipilot_faq_default_layout');
delete_site_option('nexipilot_faq_default_layout');
delete_option('nexipilot_ai_provider');
delete_site_option('nexipilot_ai_provider');
delete_option('nexipilot_enable_faq');
delete_site_option('nexipilot_enable_faq');
delete_option('nexipilot_enable_summary');
delete_site_option('nexipilot_enable_summary');
delete_option('nexipilot_enable_internal_links');
delete_site_option('nexipilot_enable_internal_links');
delete_option('nexipilot_faq_position');
delete_site_option('nexipilot_faq_position');
delete_option('nexipilot_summary_position');
delete_site_option('nexipilot_summary_position');
delete_option('nexipilot_enable_debug_logging');
delete_site_option('nexipilot_enable_debug_logging');
delete_option('nexipilot_enable_external_ai_sharing');
delete_site_option('nexipilot_enable_external_ai_sharing');
delete_option('nexipilot_external_ai_position');
delete_site_option('nexipilot_external_ai_position');
delete_option('nexipilot_external_ai_chatgpt');
delete_site_option('nexipilot_external_ai_chatgpt');
delete_option('nexipilot_external_ai_claude');
delete_site_option('nexipilot_external_ai_claude');
delete_option('nexipilot_external_ai_perplexity');
delete_site_option('nexipilot_external_ai_perplexity');
delete_option('nexipilot_external_ai_grok');
delete_site_option('nexipilot_external_ai_grok');
delete_option('nexipilot_external_ai_copilot');
delete_site_option('nexipilot_external_ai_copilot');
delete_option('nexipilot_external_ai_google');
delete_site_option('nexipilot_external_ai_google');
delete_option('nexipilot_external_ai_heading');
delete_site_option('nexipilot_external_ai_heading');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nexipilot_external_ai_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nexipilot_faq_%', '_site_transient_nexipilot_faq_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nexipilot_summary_%', '_site_transient_nexipilot_summary_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nexipilot_links_%', '_site_transient_nexipilot_links_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nexipilot_openai_validation');
delete_site_transient('nexipilot_openai_validation');
delete_transient('nexipilot_claude_validation');
delete_site_transient('nexipilot_claude_validation');
delete_transient('nexipilot_gemini_validation');
delete_site_transient('nexipilot_gemini_validation');
delete_transient('nexipilot_grok_validation');
delete_site_transient('nexipilot_grok_validation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nexipilot_faq_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nexipilot_faq_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nexipilot_faq_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nexipilot_faq_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nexipilot_faq_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nexipilot_faq_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nexipilot_faq_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nexipilot_faq_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nexipilot_faqs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nexipilot_faqs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nexipilot_faqs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nexipilot_faqs' ) );

