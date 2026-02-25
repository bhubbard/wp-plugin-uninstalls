<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_enable_reminder_email_admin');
delete_site_option('pi_enable_reminder_email_admin');
delete_option('pi_dont_send_reminder_if_order_status_is');
delete_site_option('pi_dont_send_reminder_if_order_status_is');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');
delete_option('pi_email_reminder_trigger');
delete_site_option('pi_email_reminder_trigger');

// Clear Cron Jobs
wp_clear_scheduled_hook('pisol_order_reminder_event');

