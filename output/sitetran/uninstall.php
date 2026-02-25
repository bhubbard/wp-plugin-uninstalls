<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitetran_authentication_key');
delete_site_option('sitetran_authentication_key');
delete_option('sitetran_site_id');
delete_site_option('sitetran_site_id');
delete_option('sitetran_connect_google_analytics');
delete_site_option('sitetran_connect_google_analytics');
delete_option('sitetran_auto_detect_language');
delete_site_option('sitetran_auto_detect_language');
delete_option('sitetran_original_language_code');
delete_site_option('sitetran_original_language_code');
delete_option('sitetran_target_languages');
delete_site_option('sitetran_target_languages');
delete_option('sitetran_had_conflict');
delete_site_option('sitetran_had_conflict');
delete_option('sitetran_plugin_conflict_message');
delete_site_option('sitetran_plugin_conflict_message');
delete_option('sitetran_pages_sent');
delete_site_option('sitetran_pages_sent');
delete_option('sitetran_intialize_success_message_seen');
delete_site_option('sitetran_intialize_success_message_seen');
delete_option('sitetran_flush_rewrite_rules');
delete_site_option('sitetran_flush_rewrite_rules');
delete_option('sitetran_db_version');
delete_site_option('sitetran_db_version');

