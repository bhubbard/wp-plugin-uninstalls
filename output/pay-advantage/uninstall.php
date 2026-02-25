<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pay_advantage_credit_card_description');
delete_site_option('pay_advantage_credit_card_description');
delete_option('pay_advantage_make_payment_button');
delete_site_option('pay_advantage_make_payment_button');
delete_option('pay_advantage_wc_paid_status');
delete_site_option('pay_advantage_wc_paid_status');
delete_option('pay_advantage_wc_cancel_status');
delete_site_option('pay_advantage_wc_cancel_status');
delete_option('pay_advantage_error_logging');
delete_site_option('pay_advantage_error_logging');
delete_option('pay_advantage_refresh_token');
delete_site_option('pay_advantage_refresh_token');
delete_option('pay_advantage_env');
delete_site_option('pay_advantage_env');
delete_option('pay_advantage_verified');
delete_site_option('pay_advantage_verified');
delete_option('pay_advantage_show_widget_to_users_not_logged_in');
delete_site_option('pay_advantage_show_widget_to_users_not_logged_in');
delete_option('pay_advantage_require_mobile');
delete_site_option('pay_advantage_require_mobile');
delete_option('pay_advantage_require_address');
delete_site_option('pay_advantage_require_address');
delete_option('pay_advantage_show_credit_card');
delete_site_option('pay_advantage_show_credit_card');
delete_option('pay_advantage_oncharge_credit_card_fees');
delete_site_option('pay_advantage_oncharge_credit_card_fees');
delete_option('pay_advantage_wc_oncharge_credit_card_fees');
delete_site_option('pay_advantage_wc_oncharge_credit_card_fees');
delete_option('pay_advantage_show_bpay');
delete_site_option('pay_advantage_show_bpay');
delete_option('pay_advantage_url');
delete_site_option('pay_advantage_url');
delete_option('pay_advantage_instance_id');
delete_site_option('pay_advantage_instance_id');
delete_option('pay_advantage_app_client_id');
delete_site_option('pay_advantage_app_client_id');
delete_option('pay_advantage_app_code_verifier');
delete_site_option('pay_advantage_app_code_verifier');
delete_option('pay_advantage_require_country');
delete_site_option('pay_advantage_require_country');
delete_option('pay_advantage_db_version');
delete_site_option('pay_advantage_db_version');
delete_option('pay_advantage_access_token');
delete_site_option('pay_advantage_access_token');
delete_option('pay_advantage_access_token_expiry');
delete_site_option('pay_advantage_access_token_expiry');
delete_option('pay_advantage_user_name');
delete_site_option('pay_advantage_user_name');
delete_option('pay_advantage_password');
delete_site_option('pay_advantage_password');
delete_option('pay_advantage_site_url');
delete_site_option('pay_advantage_site_url');

