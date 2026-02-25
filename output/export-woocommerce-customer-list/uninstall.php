<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('pi_ewcl_do_activation_redirect');
delete_site_option('pi_ewcl_do_activation_redirect');
delete_option('pi_customer_row');
delete_site_option('pi_customer_row');
delete_option('pi_ewcl_enable_email');
delete_site_option('pi_ewcl_enable_email');
delete_option('pi_ewcl_email');
delete_site_option('pi_ewcl_email');
delete_option('pi_ewcl_email_subject');
delete_site_option('pi_ewcl_email_subject');
delete_option('pi_ewcl_email_message');
delete_site_option('pi_ewcl_email_message');
delete_option('pi_guest_row');
delete_site_option('pi_guest_row');

// Clear Cron Jobs
wp_clear_scheduled_hook('pisol_ewcl_clear_old_files');

