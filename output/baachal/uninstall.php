<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('baachal_ai_provider');
delete_site_option('baachal_ai_provider');
delete_option('baachal_gemini_api_key');
delete_site_option('baachal_gemini_api_key');
delete_option('baachal_openai_api_key');
delete_site_option('baachal_openai_api_key');
delete_option('baachal_claude_api_key');
delete_site_option('baachal_claude_api_key');
delete_option('baachal_grok_api_key');
delete_site_option('baachal_grok_api_key');
delete_option('baachal_enabled');
delete_site_option('baachal_enabled');
delete_option('baachal_title');
delete_site_option('baachal_title');
delete_option('baachal_welcome_message');
delete_site_option('baachal_welcome_message');
delete_option('baachal_ai_model');
delete_site_option('baachal_ai_model');
delete_option('baachal_debug_mode');
delete_site_option('baachal_debug_mode');
delete_option('baachal_woocommerce_integration');
delete_site_option('baachal_woocommerce_integration');
delete_option('baachal_message_persistence');
delete_site_option('baachal_message_persistence');
delete_option('baachal_show_clear_history');
delete_site_option('baachal_show_clear_history');
delete_option('baachal_max_terms');
delete_site_option('baachal_max_terms');
delete_option('baachal_min_term_length');
delete_site_option('baachal_min_term_length');
delete_option('baachal_cache_duration');
delete_site_option('baachal_cache_duration');
delete_option('baachal_exclude_terms');
delete_site_option('baachal_exclude_terms');
delete_option('baachal_primary_color');
delete_site_option('baachal_primary_color');
delete_option('baachal_secondary_color');
delete_site_option('baachal_secondary_color');
delete_option('baachal_position');
delete_site_option('baachal_position');
delete_option('baachal_size');
delete_site_option('baachal_size');
delete_option('baachal_border_radius');
delete_site_option('baachal_border_radius');
delete_option('baachal_chat_height');
delete_site_option('baachal_chat_height');
delete_option('baachal_font_size');
delete_site_option('baachal_font_size');
delete_option('baachal_animation_enabled');
delete_site_option('baachal_animation_enabled');
delete_option('baachal_conversation_memory');
delete_site_option('baachal_conversation_memory');
delete_option('baachal_memory_limit');
delete_site_option('baachal_memory_limit');
delete_option('baachal_preserve_data_on_uninstall');
delete_site_option('baachal_preserve_data_on_uninstall');
delete_option('baachal_content_indexing_enabled');
delete_site_option('baachal_content_indexing_enabled');
delete_option('baachal_auto_index');
delete_site_option('baachal_auto_index');
delete_option('baachal_indexable_post_types');
delete_site_option('baachal_indexable_post_types');
delete_option('baachal_content_max_results');
delete_site_option('baachal_content_max_results');
delete_option('baachal_gemini_model');
delete_site_option('baachal_gemini_model');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('baachal_dynamic_terms');
delete_site_transient('baachal_dynamic_terms');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_chat_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_chat_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_chat_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_chat_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_user_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_user_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_user_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_user_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_baachal_exclude_from_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_baachal_exclude_from_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_baachal_exclude_from_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_baachal_exclude_from_index' ) );

