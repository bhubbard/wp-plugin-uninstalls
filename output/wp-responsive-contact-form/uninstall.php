<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprcf_email');
delete_site_option('wprcf_email');
delete_option('wprcf_subject');
delete_site_option('wprcf_subject');
delete_option('wprcf_success_msg');
delete_site_option('wprcf_success_msg');
delete_option('wprcf_yourname_txt');
delete_site_option('wprcf_yourname_txt');
delete_option('wprcf_email_txt');
delete_site_option('wprcf_email_txt');
delete_option('wprcf_website_txt');
delete_site_option('wprcf_website_txt');
delete_option('wprcf_message_txt');
delete_site_option('wprcf_message_txt');
delete_option('wprcf_required_txt');
delete_site_option('wprcf_required_txt');
delete_option('wprcf_spamcheck_txt');
delete_site_option('wprcf_spamcheck_txt');
delete_option('wprcf_spamcheck1_txt');
delete_site_option('wprcf_spamcheck1_txt');
delete_option('wprcf_spamcheck2_txt');
delete_site_option('wprcf_spamcheck2_txt');
delete_option('wprcf_spamcheck3_txt');
delete_site_option('wprcf_spamcheck3_txt');
delete_option('wprcf_sendbtn_txt');
delete_site_option('wprcf_sendbtn_txt');
delete_option('wprcf_show_event_tracking');
delete_site_option('wprcf_show_event_tracking');
delete_option('wprcf_event_cat');
delete_site_option('wprcf_event_cat');
delete_option('wprcf_event_value');
delete_site_option('wprcf_event_value');
delete_option('wprcf_show_spamcheck');
delete_site_option('wprcf_show_spamcheck');
delete_option('wprcf_bootstrap_option');
delete_site_option('wprcf_bootstrap_option');
delete_option('wprcf_form_class');
delete_site_option('wprcf_form_class');
delete_option('wprcf_input_row_class');
delete_site_option('wprcf_input_row_class');
delete_option('wprcf_label_class');
delete_site_option('wprcf_label_class');
delete_option('wprcf_input_col_class');
delete_site_option('wprcf_input_col_class');
delete_option('wprcf_input_class');
delete_site_option('wprcf_input_class');
delete_option('wprcf_button_place_class');
delete_site_option('wprcf_button_place_class');
delete_option('wprcf_button_class');
delete_site_option('wprcf_button_class');
delete_option('wprcf_textarea_row');
delete_site_option('wprcf_textarea_row');
delete_option('wprcf_intro_msg');
delete_site_option('wprcf_intro_msg');
delete_option('wprcf_ending_msg');
delete_site_option('wprcf_ending_msg');
delete_option('wprcf_phone_txt');
delete_site_option('wprcf_phone_txt');

