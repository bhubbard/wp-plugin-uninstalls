<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('betterlinks_quick_setup');
delete_site_option('betterlinks_quick_setup');
delete_option('betterlinks_quick_setup_step');
delete_site_option('betterlinks_quick_setup_step');
delete_option('betterlinks_ai_generator_used');
delete_site_option('betterlinks_ai_generator_used');
delete_option('betterlinks_analytics_data');
delete_site_option('betterlinks_analytics_data');
delete_option('betterlinks_dashboard_notice');
delete_site_option('betterlinks_dashboard_notice');
delete_option('betterlinks_menu_notice');
delete_site_option('betterlinks_menu_notice');
delete_option('btl_prettylink_migration_should_not_start_in_background');
delete_site_option('btl_prettylink_migration_should_not_start_in_background');
delete_option('betterlinks_hide_notice_ptl_deactive');
delete_site_option('betterlinks_hide_notice_ptl_deactive');
delete_option('betterlinks_hide_notice_ptl_migrate');
delete_site_option('betterlinks_hide_notice_ptl_migrate');
delete_option('301_redirects');
delete_site_option('301_redirects');
delete_option('betterlinks_notice_s301r_migrate');
delete_site_option('betterlinks_notice_s301r_migrate');
delete_option('betterlinks_hide_notice_s301r_deactive');
delete_site_option('betterlinks_hide_notice_s301r_deactive');
delete_option('betterlinks_notice_ta_migrate');
delete_site_option('betterlinks_notice_ta_migrate');
delete_option('betterlinkspro_auto_link_create');
delete_site_option('betterlinkspro_auto_link_create');
delete_option('betterlinks_utm_builder_used');
delete_site_option('betterlinks_utm_builder_used');
delete_option('_wpdeveloper_plugin_pointer_priority');
delete_site_option('_wpdeveloper_plugin_pointer_priority');
delete_option('betterlinks_betterlinks_feb_camp_2026_notice_dismissed');
delete_site_option('betterlinks_betterlinks_feb_camp_2026_notice_dismissed');
delete_option('betterlinks_notice_ptl_migrate');
delete_site_option('betterlinks_notice_ptl_migrate');
delete_option('betterlinks_notice_ptl_migration_running_in_background');
delete_site_option('betterlinks_notice_ptl_migration_running_in_background');
delete_option('betterlinks_hide_notice_s301r_migrate');
delete_site_option('betterlinks_hide_notice_s301r_migrate');
delete_option('betterlinks_hide_notice_ta_migrate');
delete_site_option('betterlinks_hide_notice_ta_migrate');
delete_option('betterlinks_hide_notice_ta_deactive');
delete_site_option('betterlinks_hide_notice_ta_deactive');
delete_option('betterlinks_bulk_generation_status');
delete_site_option('betterlinks_bulk_generation_status');
delete_option('betterlinks_bulk_generation_report');
delete_site_option('betterlinks_bulk_generation_report');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');
delete_option('wpdeveloper_plugins_data');
delete_site_option('wpdeveloper_plugins_data');
delete_option('betterlinks_links');
delete_site_option('betterlinks_links');
delete_option('301_redirects_wildcard');
delete_site_option('301_redirects_wildcard');
delete_option('betterlinkspro_broken_links_logs');
delete_site_option('betterlinkspro_broken_links_logs');
delete_option('ta_no_follow');
delete_site_option('ta_no_follow');
delete_option('ta_link_redirect_type');
delete_site_option('ta_link_redirect_type');
delete_option('ta_pass_query_str');
delete_site_option('ta_pass_query_str');
delete_option('betterlinkspro_fullsite_broken_links_logs_cleared');
delete_site_option('betterlinkspro_fullsite_broken_links_logs_cleared');
delete_option('betterlinkspro_fullsite_broken_links_logs');
delete_site_option('betterlinkspro_fullsite_broken_links_logs');
delete_option('btl_tags_analytics');
delete_site_option('btl_tags_analytics');
delete_option('btl_categories_analytics');
delete_site_option('btl_categories_analytics');

// Delete Transients
delete_transient('betterlinks_migration_data_prettylinks');
delete_site_transient('betterlinks_migration_data_prettylinks');
delete_transient('betterlinks_black_friday_pointer_dismissed');
delete_site_transient('betterlinks_black_friday_pointer_dismissed');
delete_transient('betterlinks_import_info');
delete_site_transient('betterlinks_import_info');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wpnotice_priority_time_expired');
delete_site_transient('wpnotice_priority_time_expired');

// Clear Cron Jobs
wp_clear_scheduled_hook('betterlinks/analytics');
wp_clear_scheduled_hook('betterlinks/write_json_links');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'betterlinks_enable_affiliate_link_disclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'betterlinks_enable_affiliate_link_disclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'betterlinks_enable_affiliate_link_disclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'betterlinks_enable_affiliate_link_disclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_betterlinks_custom_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_betterlinks_custom_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_betterlinks_custom_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_betterlinks_custom_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_no_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_redirect_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_redirect_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_redirect_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_redirect_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_pass_query_str' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_pass_query_str' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_pass_query_str' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_pass_query_str' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_geolocation_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_geolocation_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_geolocation_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_geolocation_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_link_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_link_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_link_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_link_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_link_expire_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_link_expire_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_link_expire_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_link_expire_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_after_expire_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_after_expire_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_after_expire_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_after_expire_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_autolink_keyword_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_autolink_keyword_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_autolink_keyword_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_autolink_keyword_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_autolink_keyword_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_autolink_keyword_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_autolink_keyword_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_autolink_keyword_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_destination_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_destination_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_destination_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_destination_url' ) );

