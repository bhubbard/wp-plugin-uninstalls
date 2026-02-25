-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('members_360_wp_email_logo', 'members_360_wp_email_intro_text', 'members_360_wp_email_footer_text', 'members_360_wp_login_redirect_url', 'members_360_wp_login_page_url', 'members_360_wp_debug_transactions_file', 'members_360_wp_account_custom_fields', 'members_360_wp_signup_page_url', 'members_360_wp_recaptcha_site_key', 'members_360_wp_recaptcha_secret_key', 'members_360_wp_frontend_nonce', 'members_360_wp_debug_transactions_db', 'members_360_wp_paypal_webhook_send_ok', 'members_360_wp_pro_license_code', 'members_360_wp_db_version');

