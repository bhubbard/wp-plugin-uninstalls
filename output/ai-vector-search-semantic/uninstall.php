<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aivesese_search_results_limit');
delete_site_option('aivesese_search_results_limit');
delete_option('aivesese_cli_upgrade_notice_dismissed');
delete_site_option('aivesese_cli_upgrade_notice_dismissed');
delete_option('aivesese_plugin_version');
delete_site_option('aivesese_plugin_version');
delete_option('aivesese_connection_mode');
delete_site_option('aivesese_connection_mode');
delete_option('aivesese_postgres_connection_string');
delete_site_option('aivesese_postgres_connection_string');
delete_option('aivesese_lite_stopwords');
delete_site_option('aivesese_lite_stopwords');
delete_option('aivesese_lite_synonyms');
delete_site_option('aivesese_lite_synonyms');
delete_option('aivesese_lite_index_limit');
delete_site_option('aivesese_lite_index_limit');
delete_option('aivesese_lite_avg_search_time');
delete_site_option('aivesese_lite_avg_search_time');
delete_option('aivesese_license_key');
delete_site_option('aivesese_license_key');
delete_option('aivesese_api_activated');
delete_site_option('aivesese_api_activated');
delete_option('aivesese_store');
delete_site_option('aivesese_store');
delete_option('aivesese_url');
delete_site_option('aivesese_url');
delete_option('aivesese_key');
delete_site_option('aivesese_key');
delete_option('aivesese_enable_search');
delete_site_option('aivesese_enable_search');
delete_option('aivesese_semantic_toggle');
delete_site_option('aivesese_semantic_toggle');
delete_option('aivesese_openai');
delete_site_option('aivesese_openai');
delete_option('aivesese_enable_woodmart_integration');
delete_site_option('aivesese_enable_woodmart_integration');
delete_option('aivesese_sql_v2_dismissed');
delete_site_option('aivesese_sql_v2_dismissed');
delete_option('aivesese_schema_installed');
delete_site_option('aivesese_schema_installed');
delete_option('aivesese_schema_install_method');
delete_site_option('aivesese_schema_install_method');
delete_option('aivesese_analytics_db_version');
delete_site_option('aivesese_analytics_db_version');
delete_option('aivesese_schema_version');
delete_site_option('aivesese_schema_version');
delete_option('aivesese_master_key_notice_dismissed');
delete_site_option('aivesese_master_key_notice_dismissed');
delete_option('aivesese_show_welcome_notice');
delete_site_option('aivesese_show_welcome_notice');
delete_option('aivesese_analytics_discovered');
delete_site_option('aivesese_analytics_discovered');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aivesese_opportunity_shown_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aivesese_auto_sync');
delete_site_option('aivesese_auto_sync');
delete_option('aivesese_enable_pdp_similar');
delete_site_option('aivesese_enable_pdp_similar');
delete_option('aivesese_enable_cart_below');
delete_site_option('aivesese_enable_cart_below');

// Clear Cron Jobs
wp_clear_scheduled_hook('aivs_cleanup_analytics');
wp_clear_scheduled_hook('aivesese_rebuild_lite_index');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aivesese_help_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aivesese_help_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aivesese_help_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aivesese_help_open' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cost_price' ) );

