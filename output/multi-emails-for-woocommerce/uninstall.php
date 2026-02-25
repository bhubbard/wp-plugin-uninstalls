<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multi-emails-woocommerce-recipients');
delete_site_option('multi-emails-woocommerce-recipients');
delete_option('multi_email_woocommerce_settings');
delete_site_option('multi_email_woocommerce_settings');
delete_option('addtional_email_recipients_settings');
delete_site_option('addtional_email_recipients_settings');
delete_option('multi_emails_woocommerce_hide_feedback_notice');
delete_site_option('multi_emails_woocommerce_hide_feedback_notice');
delete_option('multi_emails_woocommerce_installed_on');
delete_site_option('multi_emails_woocommerce_installed_on');

