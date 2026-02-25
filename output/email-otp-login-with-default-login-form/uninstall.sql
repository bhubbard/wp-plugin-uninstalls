-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eolwdlf_email_otp_enabled_roles', 'woocommerce_myaccount_page_id');

