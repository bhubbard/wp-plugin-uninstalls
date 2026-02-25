<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mf7_list_options');
delete_site_option('mf7_list_options');
delete_option('mailjet_form_7_custom_1_label');
delete_site_option('mailjet_form_7_custom_1_label');
delete_option('mailjet_form_7_custom_1_field');
delete_site_option('mailjet_form_7_custom_1_field');
delete_option('mailjet_form_7_custom_2_label');
delete_site_option('mailjet_form_7_custom_2_label');
delete_option('mailjet_form_7_custom_2_field');
delete_site_option('mailjet_form_7_custom_2_field');
delete_option('mailjet_form_7_custom_3_label');
delete_site_option('mailjet_form_7_custom_3_label');
delete_option('mailjet_form_7_custom_3_field');
delete_site_option('mailjet_form_7_custom_3_field');
delete_option('mailjet_form_7_custom_4_label');
delete_site_option('mailjet_form_7_custom_4_label');
delete_option('mailjet_form_7_custom_4_field');
delete_site_option('mailjet_form_7_custom_4_field');
delete_option('mailjet_form_7_custom_5_label');
delete_site_option('mailjet_form_7_custom_5_label');
delete_option('mailjet_form_7_custom_5_field');
delete_site_option('mailjet_form_7_custom_5_field');
delete_option('mailjet_form_7_email_field');
delete_site_option('mailjet_form_7_email_field');
delete_option('mailjet_form_7_name_field');
delete_site_option('mailjet_form_7_name_field');
delete_option('mailjet_form_7_checkbox_field');
delete_site_option('mailjet_form_7_checkbox_field');
delete_option('mailjet_form_7_mailjet_list_id');
delete_site_option('mailjet_form_7_mailjet_list_id');
delete_option('mailjet_form_7_checkbox_disable');
delete_site_option('mailjet_form_7_checkbox_disable');
delete_option('mailjet_apikey');
delete_site_option('mailjet_apikey');
delete_option('mailjet_apisecret');
delete_site_option('mailjet_apisecret');
delete_option('mailjet_username');
delete_site_option('mailjet_username');
delete_option('mailjet_password');
delete_site_option('mailjet_password');

