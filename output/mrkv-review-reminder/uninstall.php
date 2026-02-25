<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrkv_review_reminder');
delete_site_option('mrkv_review_reminder');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');
delete_option('woocommerce_email_footer_text_color');
delete_site_option('woocommerce_email_footer_text_color');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');

// Clear Cron Jobs
wp_clear_scheduled_hook('mrkv_next_reminder');

