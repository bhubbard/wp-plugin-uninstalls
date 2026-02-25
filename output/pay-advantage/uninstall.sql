-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pay_advantage_credit_card_description', 'pay_advantage_make_payment_button', 'pay_advantage_wc_paid_status', 'pay_advantage_wc_cancel_status', 'pay_advantage_error_logging', 'pay_advantage_refresh_token', 'pay_advantage_env', 'pay_advantage_verified', 'pay_advantage_show_widget_to_users_not_logged_in', 'pay_advantage_require_mobile', 'pay_advantage_require_address', 'pay_advantage_show_credit_card', 'pay_advantage_oncharge_credit_card_fees', 'pay_advantage_wc_oncharge_credit_card_fees', 'pay_advantage_show_bpay', 'pay_advantage_url', 'pay_advantage_instance_id', 'pay_advantage_app_client_id', 'pay_advantage_app_code_verifier', 'pay_advantage_require_country', 'pay_advantage_db_version', 'pay_advantage_access_token', 'pay_advantage_access_token_expiry', 'pay_advantage_user_name', 'pay_advantage_password', 'pay_advantage_site_url');

