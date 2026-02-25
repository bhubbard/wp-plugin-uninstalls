<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aranalyzer_isHighlightingEnabled');
delete_site_option('aranalyzer_isHighlightingEnabled');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('aranalyzer_consumerkey');
delete_site_option('aranalyzer_consumerkey');
delete_option('aranalyzer_secretkey');
delete_site_option('aranalyzer_secretkey');
delete_option('aranalyzer_state_keys');
delete_site_option('aranalyzer_state_keys');
delete_option('aranalyzer_tracking');
delete_site_option('aranalyzer_tracking');
delete_option('aranalyzer_view');
delete_site_option('aranalyzer_view');
delete_option('aranalyzer_RSS');
delete_site_option('aranalyzer_RSS');
delete_option('arActivatedDate');
delete_site_option('arActivatedDate');
delete_option('aranalyzer_create');
delete_site_option('aranalyzer_create');
delete_option('aranalyzer_recommendation');
delete_site_option('aranalyzer_recommendation');
delete_option('rss_language');
delete_site_option('rss_language');
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');
delete_option('aranalyzer_tracking_date');
delete_site_option('aranalyzer_tracking_date');
delete_option('AR_Tracking_Hash');
delete_site_option('AR_Tracking_Hash');

