<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chained_csv_delim');
delete_site_option('chained_csv_delim');
delete_option('chained_csv_quotes');
delete_site_option('chained_csv_quotes');
delete_option('chained_integrations');
delete_site_option('chained_integrations');
delete_option('chainedchimp_api_key');
delete_site_option('chainedchimp_api_key');
delete_option('chainedchimp_no_optin');
delete_site_option('chainedchimp_no_optin');
delete_option('chained_ui');
delete_site_option('chained_ui');
delete_option('chained_facebook_appid');
delete_site_option('chained_facebook_appid');
delete_option('chained_linkedin');
delete_site_option('chained_linkedin');
delete_option('chained_twitter');
delete_site_option('chained_twitter');
delete_option('chained_sender_name');
delete_site_option('chained_sender_name');
delete_option('chained_sender_email');
delete_site_option('chained_sender_email');
delete_option('chained_gdpr_ips');
delete_site_option('chained_gdpr_ips');
delete_option('chained_text_captcha');
delete_site_option('chained_text_captcha');
delete_option('chained_fixed_sort_order');
delete_site_option('chained_fixed_sort_order');
delete_option('chainedquiz_version');
delete_site_option('chainedquiz_version');
delete_option('chained_admin_subject');
delete_site_option('chained_admin_subject');
delete_option('chained_user_subject');
delete_site_option('chained_user_subject');
delete_option('chained_version');
delete_site_option('chained_version');
delete_option('chained_debug_mode');
delete_site_option('chained_debug_mode');
delete_option('chainedquiz_cleanup');
delete_site_option('chainedquiz_cleanup');
delete_option('chainedquiz_cleanup_db');
delete_site_option('chainedquiz_cleanup_db');

