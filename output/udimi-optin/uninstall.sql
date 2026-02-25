-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udimi_optin_key', 'udimi_prime_features', 'udimi_user_email', 'udimi_allow_optin_tracking', 'udimi_is_last_success', 'udimi_optin_date', 'udimi_optin_script');

