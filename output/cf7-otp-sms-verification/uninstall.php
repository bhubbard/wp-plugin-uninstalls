<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ihs_otp_form_selector');
delete_site_option('ihs_otp_form_selector');
delete_option('ihs_otp_submit_btn-selector');
delete_site_option('ihs_otp_submit_btn-selector');
delete_option('ihs_otp_mobile_input_required');
delete_site_option('ihs_otp_mobile_input_required');
delete_option('ihs_otp_mobile_input_name');
delete_site_option('ihs_otp_mobile_input_name');
delete_option('ihs_otp_login_form_selector');
delete_site_option('ihs_otp_login_form_selector');
delete_option('ihs_otp_country_code');
delete_site_option('ihs_otp_country_code');
delete_option('ihs_otp_msg_template');
delete_site_option('ihs_otp_msg_template');
delete_option('ihs_otp_auth_key');
delete_site_option('ihs_otp_auth_key');
delete_option('ihs_otp_sender_id');
delete_site_option('ihs_otp_sender_id');
delete_option('ihs_otp_mob_meta_key');
delete_site_option('ihs_otp_mob_meta_key');
delete_option('ihs_otp_reset_template');
delete_site_option('ihs_otp_reset_template');
delete_option('ihs_otp_mob_country_code');
delete_site_option('ihs_otp_mob_country_code');

