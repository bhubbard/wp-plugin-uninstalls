-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'elex_discount_per_payment_method_options', 'elex_wfp_discount_per_payment_method_label');
DELETE FROM wp_options WHERE option_name LIKE 'elex_wfp_discount_per_payment_method_available_%';

