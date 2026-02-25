-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_verifone_onboarding_completed', 'woocommerce_currency', 'verifone_payment_db_version');

