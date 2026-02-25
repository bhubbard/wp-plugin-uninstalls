<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('transmail_plugin_version');
delete_site_option('transmail_plugin_version');
delete_option('transmail_max_log_limit');
delete_site_option('transmail_max_log_limit');
delete_option('transmail_additional_mail_agents');
delete_site_option('transmail_additional_mail_agents');
delete_option('transmail_test_mail_case');
delete_site_option('transmail_test_mail_case');
delete_option('transmail_connection_status');
delete_site_option('transmail_connection_status');
delete_option('transmail_content_type');
delete_site_option('transmail_content_type');
delete_option('transmail_domain_name');
delete_site_option('transmail_domain_name');
delete_option('transmail_mail_agents_count');
delete_site_option('transmail_mail_agents_count');
delete_option('transmail_from_name');
delete_site_option('transmail_from_name');
delete_option('transmail_from_email_id');
delete_site_option('transmail_from_email_id');
delete_option('transmail_send_mail_token');
delete_site_option('transmail_send_mail_token');
delete_option('zmail_plugin_installed');
delete_site_option('zmail_plugin_installed');

