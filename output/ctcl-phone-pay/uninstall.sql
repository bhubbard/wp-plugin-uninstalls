-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctcl_activate_phone_pay', 'ctcl_phone_pay_phone_number', 'ctcl_tax_rate', 'ctcl_currency');

