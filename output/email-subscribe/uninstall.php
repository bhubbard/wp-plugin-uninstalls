<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_news_letter_settings');
delete_site_option('wp_news_letter_settings');
delete_option('email_subscription_popup_messages');
delete_site_option('email_subscription_popup_messages');
delete_option('mass_email_queue_news_subscriber');
delete_site_option('mass_email_queue_news_subscriber');
delete_option('mass_email_subscribers_succ');
delete_site_option('mass_email_subscribers_succ');
delete_option('mass_email_subscribers_err');
delete_site_option('mass_email_subscribers_err');

