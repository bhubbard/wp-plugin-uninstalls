-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seelwopu_admin_user', 'seelwopu_debug_mode', 'seelwopu_wc_auth_token', 'seelwopu_wc_auth_date', 'seelwopu_oauth_state', 'seelwopu_oauth_timestamp', 'woocommerce_email_from_address');

