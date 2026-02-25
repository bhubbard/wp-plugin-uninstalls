<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7sr_notice_017');
delete_site_option('cf7sr_notice_017');
delete_option('cf7sr_hc_key');
delete_site_option('cf7sr_hc_key');
delete_option('cf7sr_hc_secret');
delete_site_option('cf7sr_hc_secret');
delete_option('cf7sr_hc_message');
delete_site_option('cf7sr_hc_message');
delete_option('cf7sr_hc_language');
delete_site_option('cf7sr_hc_language');
delete_option('cf7sr_key_v3');
delete_site_option('cf7sr_key_v3');
delete_option('cf7sr_secret_v3');
delete_site_option('cf7sr_secret_v3');
delete_option('cf7sr_score_v3');
delete_site_option('cf7sr_score_v3');
delete_option('cf7sr_message_v3');
delete_site_option('cf7sr_message_v3');
delete_option('cf7sr_key');
delete_site_option('cf7sr_key');
delete_option('cf7sr_secret');
delete_site_option('cf7sr_secret');
delete_option('cf7sr_message');
delete_site_option('cf7sr_message');
delete_option('cf7sr_language');
delete_site_option('cf7sr_language');
delete_option('cf7sr_ts_key');
delete_site_option('cf7sr_ts_key');
delete_option('cf7sr_ts_secret');
delete_site_option('cf7sr_ts_secret');
delete_option('cf7sr_ts_message');
delete_site_option('cf7sr_ts_message');
delete_option('cf7sr_ts_language');
delete_site_option('cf7sr_ts_language');
delete_option('cf7sr_spam_stats');
delete_site_option('cf7sr_spam_stats');

