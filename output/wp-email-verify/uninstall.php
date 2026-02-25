<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailchecker_server_status');
delete_site_option('emailchecker_server_status');
delete_option('emailchecker_server_msg');
delete_site_option('emailchecker_server_msg');
delete_option('emailchecker_api_key');
delete_site_option('emailchecker_api_key');
delete_option('emailchecker_credit');
delete_site_option('emailchecker_credit');
delete_option('emailchecker_usd_balance');
delete_site_option('emailchecker_usd_balance');
delete_option('emailchecker_rate');
delete_site_option('emailchecker_rate');
delete_option('day_email_check_stat');
delete_site_option('day_email_check_stat');
delete_option('all_email_checked');
delete_site_option('all_email_checked');
delete_option('rem_emailchecker_credit');
delete_site_option('rem_emailchecker_credit');
delete_option('emailchecker_used_credits');
delete_site_option('emailchecker_used_credits');
delete_option('emailchecker_blocked_domains_list');
delete_site_option('emailchecker_blocked_domains_list');
delete_option('emailchecker_blocked_emails_list');
delete_site_option('emailchecker_blocked_emails_list');
delete_option('emailchecker_allowed_domains_list');
delete_site_option('emailchecker_allowed_domains_list');
delete_option('emailchecker_allowed_emails_list');
delete_site_option('emailchecker_allowed_emails_list');

