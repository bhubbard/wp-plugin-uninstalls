<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashi_do_environmental_check');
delete_site_option('dashi_do_environmental_check');
delete_option('dashi_alert_acl');
delete_site_option('dashi_alert_acl');
delete_option('dashi_alert_fileacl');
delete_site_option('dashi_alert_fileacl');
delete_option('dashi_development_diable_field_cache');
delete_site_option('dashi_development_diable_field_cache');
delete_option('dashi_head_html_is_ok');
delete_site_option('dashi_head_html_is_ok');
delete_option('dashi_utility_pages_are_ok');
delete_site_option('dashi_utility_pages_are_ok');
delete_option('dashi_backup_is_ok');
delete_site_option('dashi_backup_is_ok');
delete_option('dashi_server_accesslog_is_ok');
delete_site_option('dashi_server_accesslog_is_ok');
delete_option('dashi_no_need_acc_plugin');
delete_site_option('dashi_no_need_acc_plugin');
delete_option('dashi_no_need_dev_plugin');
delete_site_option('dashi_no_need_dev_plugin');
delete_option('dashi_no_need_security_plugin');
delete_site_option('dashi_no_need_security_plugin');
delete_option('dashi_allow_comments');
delete_site_option('dashi_allow_comments');
delete_option('dashi_do_not_heavy_dashboard_check');
delete_site_option('dashi_do_not_heavy_dashboard_check');
delete_option('dashi_no_need_sitemap_plugin');
delete_site_option('dashi_no_need_sitemap_plugin');
delete_option('xmlsf_sitemaps');
delete_site_option('xmlsf_sitemaps');
delete_option('dashi_allow_xmlrpc');
delete_site_option('dashi_allow_xmlrpc');
delete_option('dashi_no_need_analytics');
delete_site_option('dashi_no_need_analytics');
delete_option('dashi_another_done_sendmail');
delete_site_option('dashi_another_done_sendmail');
delete_option('dashi_show_csv_export_dashboard');
delete_site_option('dashi_show_csv_export_dashboard');
delete_option('dashi_development_mode');
delete_site_option('dashi_development_mode');
delete_option('dashi_google_map_api_key');
delete_site_option('dashi_google_map_api_key');
delete_option('dashi_enrich_search_result_page');
delete_site_option('dashi_enrich_search_result_page');
delete_option('dashi_ignore_checked_ontop');
delete_site_option('dashi_ignore_checked_ontop');
delete_option('dashi_activate_pagepart');
delete_site_option('dashi_activate_pagepart');
delete_option('dashi_public_form_done_sendmail');
delete_site_option('dashi_public_form_done_sendmail');
delete_option('dashi_remove_host_at_upload_file');
delete_site_option('dashi_remove_host_at_upload_file');
delete_option('dashi_do_eliminate_control_codes');
delete_site_option('dashi_do_eliminate_control_codes');
delete_option('dashi_do_eliminate_utf_separation');
delete_site_option('dashi_do_eliminate_utf_separation');
delete_option('dashi_specify_search_index');
delete_site_option('dashi_specify_search_index');
delete_option('dashi_sitemap_depth_of_page');
delete_site_option('dashi_sitemap_depth_of_page');
delete_option('dashi_sitemap_page_upsidedown');
delete_site_option('dashi_sitemap_page_upsidedown');
delete_option('dashi_sitemap_home_string');
delete_site_option('dashi_sitemap_home_string');
delete_option('dashi_disactivate_author_page');
delete_site_option('dashi_disactivate_author_page');
delete_option('dashi_keep_ssl_connection');
delete_site_option('dashi_keep_ssl_connection');
delete_option('dashi_show_wp_version');
delete_site_option('dashi_show_wp_version');
delete_option('dashi_auto_update_core');
delete_site_option('dashi_auto_update_core');
delete_option('dashi_auto_update_theme');
delete_site_option('dashi_auto_update_theme');
delete_option('dashi_auto_update_plugin');
delete_site_option('dashi_auto_update_plugin');
delete_option('dashi_auto_update_language');
delete_site_option('dashi_auto_update_language');

// Delete Transients
delete_transient('dashi_notation_sitemap_exist');
delete_site_transient('dashi_notation_sitemap_exist');
delete_transient('dashi_notation_display_error_exist');
delete_site_transient('dashi_notation_display_error_exist');
delete_transient('dashi_notation_xmlrpc_denied');
delete_site_transient('dashi_notation_xmlrpc_denied');
delete_transient('dashi_notation_directory_listing_denied');
delete_site_transient('dashi_notation_directory_listing_denied');
delete_transient('dashi_notation_http_wpconfig_denied');
delete_site_transient('dashi_notation_http_wpconfig_denied');
delete_transient('dashi_notation_check_google_analytics');
delete_site_transient('dashi_notation_check_google_analytics');
delete_transient('dashi_expected_custom_field_keys');
delete_site_transient('dashi_expected_custom_field_keys');
delete_transient('dashi_errors');
delete_site_transient('dashi_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('dashi_cron_hook');
wp_clear_scheduled_hook('dashi_public_form_gc_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mail_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mail_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mail_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mail_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dashi_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dashi_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dashi_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dashi_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dashi_pubic_form_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending_process' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dashi_pubic_form_pending_process' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending_process' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dashi_pubic_form_pending_process' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dashi_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dashi_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dashi_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dashi_redirect_to' ) );

