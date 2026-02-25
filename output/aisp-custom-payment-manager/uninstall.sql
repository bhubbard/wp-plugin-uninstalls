-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_custom_payment_method_1_enabled', 'aisp_custom_payment_method_2_enabled', 'aisp_custom_payment_method_3_enabled');

