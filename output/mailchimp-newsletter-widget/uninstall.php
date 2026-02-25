<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailchimp_apikey');
delete_site_option('mailchimp_apikey');
delete_option('mailchimp_listid');
delete_site_option('mailchimp_listid');
delete_option('mailchimp_signup_stats');
delete_site_option('mailchimp_signup_stats');
delete_option('mailchimp_email_log');
delete_site_option('mailchimp_email_log');
delete_option('mailchimp_custom_form');
delete_site_option('mailchimp_custom_form');

