<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email_verify_check_mx');
delete_site_option('email_verify_check_mx');
delete_option('email_verify_check_smtp');
delete_site_option('email_verify_check_smtp');
delete_option('email_verify_check_error');
delete_site_option('email_verify_check_error');
delete_option('email_verify_dep');
delete_site_option('email_verify_dep');
delete_option('email_verify_dep_error');
delete_site_option('email_verify_dep_error');
delete_option('email_verify_emails');
delete_site_option('email_verify_emails');
delete_option('email_verify_emails_error');
delete_site_option('email_verify_emails_error');
delete_option('email_verify_domains');
delete_site_option('email_verify_domains');
delete_option('email_verify_domains_error');
delete_site_option('email_verify_domains_error');
delete_option('email_verify_safelist');
delete_site_option('email_verify_safelist');
delete_option('email_verify_safelist_emails');
delete_site_option('email_verify_safelist_emails');

