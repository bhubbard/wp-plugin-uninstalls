<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('res_calendar_color');
delete_site_option('res_calendar_color');
delete_option('res_color');
delete_site_option('res_color');
delete_option('res_security_plugin');
delete_site_option('res_security_plugin');
delete_option('res_security_settings');
delete_site_option('res_security_settings');
delete_option('res_db_version');
delete_site_option('res_db_version');
delete_option('res_days');
delete_site_option('res_days');
delete_option('res_full_uninstall');
delete_site_option('res_full_uninstall');
delete_option('res_terms');
delete_site_option('res_terms');
delete_option('res_calc');
delete_site_option('res_calc');
delete_option('res_mail_admin_subject');
delete_site_option('res_mail_admin_subject');
delete_option('res_mail_admin_message');
delete_site_option('res_mail_admin_message');
delete_option('res_mail_client_subject');
delete_site_option('res_mail_client_subject');
delete_option('res_mail_client_message');
delete_site_option('res_mail_client_message');
delete_option('res_advance_payment_in_percents');
delete_site_option('res_advance_payment_in_percents');
delete_option('res_pay_paypal_enabled');
delete_site_option('res_pay_paypal_enabled');
delete_option('res_pay_pos_enabled');
delete_site_option('res_pay_pos_enabled');
delete_option('res_pay_robokassa_enabled');
delete_site_option('res_pay_robokassa_enabled');
delete_option('res_pay_sber_enabled');
delete_site_option('res_pay_sber_enabled');
delete_option('res_pay_webmoney_enabled');
delete_site_option('res_pay_webmoney_enabled');
delete_option('res_pay_mobcash_enabled');
delete_site_option('res_pay_mobcash_enabled');

