<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WRPErrors_email_option');
delete_site_option('WRPErrors_email_option');
delete_option('WRPErrors_hide_icon');
delete_site_option('WRPErrors_hide_icon');
delete_option('WRPErrors_email');
delete_site_option('WRPErrors_email');
delete_option('WRPErrors_message');
delete_site_option('WRPErrors_message');
delete_option('WRPErrors_code');
delete_site_option('WRPErrors_code');
delete_option('WRPErrors_subject');
delete_site_option('WRPErrors_subject');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('akismet_spam_count');
delete_site_option('akismet_spam_count');

