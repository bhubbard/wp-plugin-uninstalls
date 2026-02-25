-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcfpp_billing_settings', 'dcfpp_extra_settings', 'dcfpp_shipping_settings', 'dcfpp_additional_settings', 'dcfpp_additional_fees');

