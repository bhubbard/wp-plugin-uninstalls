-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AcceptStripePayments-settings', 'sdm_advanced_options', 'bpcft_db_version', 'bpcft_configs');

