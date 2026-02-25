<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcc_automated_greeting');
delete_site_option('mcc_automated_greeting');
delete_option('mcc_automated_first_heading');
delete_site_option('mcc_automated_first_heading');
delete_option('mcc_automated_form_instructions');
delete_site_option('mcc_automated_form_instructions');
delete_option('mcc_automated_second_heading');
delete_site_option('mcc_automated_second_heading');
delete_option('mcc_automated_total_cost_label');
delete_site_option('mcc_automated_total_cost_label');
delete_option('mcc_automated_total_phone_count_label');
delete_site_option('mcc_automated_total_phone_count_label');
delete_option('mcc_automated_savings_label');
delete_site_option('mcc_automated_savings_label');
delete_option('mcc_automated_giga_usage_label');
delete_site_option('mcc_automated_giga_usage_label');
delete_option('mcc_automated_customer_name');
delete_site_option('mcc_automated_customer_name');
delete_option('mcc_automated_customer_mail');
delete_site_option('mcc_automated_customer_mail');
delete_option('mcc_automated_notif_mail');
delete_site_option('mcc_automated_notif_mail');
delete_option('mcc_automated_form_notif_template');
delete_site_option('mcc_automated_form_notif_template');
delete_option('mcc_automated_savings_formula_percent');
delete_site_option('mcc_automated_savings_formula_percent');
delete_option('mcc_automated_form2_next_step_msg');
delete_site_option('mcc_automated_form2_next_step_msg');
delete_option('mcc_automated_db_version');
delete_site_option('mcc_automated_db_version');

