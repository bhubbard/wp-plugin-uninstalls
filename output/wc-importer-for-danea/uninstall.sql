-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcifd-suppliers-role');
DELETE FROM wp_options WHERE option_name LIKE '%-role';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_state', 'billing_country', 'billing_phone', 'billing_email', 'wcifd_fiscal_code', 'wcifd_p_iva');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_state', 'billing_country', 'billing_phone', 'billing_email', 'wcifd_fiscal_code', 'wcifd_p_iva');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_state', 'billing_country', 'billing_phone', 'billing_email', 'wcifd_fiscal_code', 'wcifd_p_iva');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_state', 'billing_country', 'billing_phone', 'billing_email', 'wcifd_fiscal_code', 'wcifd_p_iva');

