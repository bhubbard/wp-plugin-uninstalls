-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_villoid_access_token', 'woocommerce_villoid_user_id', 'woocommerce_villoid_has_auth_keys', 'woocommerce_villoid_gain_access_in_progress');

