<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wireless_butler_email_to_user_subject');
delete_site_option('wireless_butler_email_to_user_subject');
delete_option('wireless_butler_email_to_user_content');
delete_site_option('wireless_butler_email_to_user_content');
delete_option('wireless_butler_notification_email');
delete_site_option('wireless_butler_notification_email');
delete_option('wireless_butler_form_notification_template');
delete_site_option('wireless_butler_form_notification_template');
delete_option('wireless_butler_form_1_step_1_greeting');
delete_site_option('wireless_butler_form_1_step_1_greeting');
delete_option('wireless_butler_form_1_step_1_heading');
delete_site_option('wireless_butler_form_1_step_1_heading');
delete_option('wireless_butler_form_1_step_1_label');
delete_site_option('wireless_butler_form_1_step_1_label');
delete_option('wireless_butler_form_1_step_1_account_holder');
delete_site_option('wireless_butler_form_1_step_1_account_holder');
delete_option('wireless_butler_form_1_step_1_smartphone_heading');
delete_site_option('wireless_butler_form_1_step_1_smartphone_heading');
delete_option('wireless_butler_form_1_step_1_button_text');
delete_site_option('wireless_butler_form_1_step_1_button_text');
delete_option('wireless_butler_form_1_step_2_heading');
delete_site_option('wireless_butler_form_1_step_2_heading');
delete_option('wireless_butler_form_1_step_2_chepest_plan_text');
delete_site_option('wireless_butler_form_1_step_2_chepest_plan_text');
delete_option('wireless_butler_form_1_step_2_total_bill');
delete_site_option('wireless_butler_form_1_step_2_total_bill');
delete_option('wireless_butler_form_1_step_2_latest_month_bill');
delete_site_option('wireless_butler_form_1_step_2_latest_month_bill');
delete_option('wireless_butler_form_1_step_2_past_due');
delete_site_option('wireless_butler_form_1_step_2_past_due');
delete_option('wireless_butler_form_1_step_2_total_plan_charges');
delete_site_option('wireless_butler_form_1_step_2_total_plan_charges');
delete_option('wireless_butler_form_1_step_2_gb_of_data_used');
delete_site_option('wireless_butler_form_1_step_2_gb_of_data_used');
delete_option('wireless_butler_form_1_step_2_gb_in_your_plan');
delete_site_option('wireless_butler_form_1_step_2_gb_in_your_plan');
delete_option('wireless_butler_form_1_step_2_reach_out_text');
delete_site_option('wireless_butler_form_1_step_2_reach_out_text');
delete_option('wireless_butler_form_1_step_2_device_balance');
delete_site_option('wireless_butler_form_1_step_2_device_balance');
delete_option('wireless_butler_form_1_step_2_device_owned');
delete_site_option('wireless_butler_form_1_step_2_device_owned');
delete_option('wireless_butler_form_1_step_2_button_text');
delete_site_option('wireless_butler_form_1_step_2_button_text');
delete_option('wireless_butler_admin_name');
delete_site_option('wireless_butler_admin_name');
delete_option('wireless_butler_admin_mail');
delete_site_option('wireless_butler_admin_mail');
delete_option('wireless_butler_db_version');
delete_site_option('wireless_butler_db_version');

