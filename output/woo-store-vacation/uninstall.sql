-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_store_vacation_onboarding', 'woo_store_vacation_rated', 'woo_store_vacation_activation_timestamp', 'woo_store_vacation_options', 'active_sitewide_plugins');

