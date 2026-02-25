-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country', 'rcp_country', 'rcp_company_vat_number', 'billing_address_1', 'billing_postcode', 'rcp_company_name', 'rcp_address', 'rcp_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country', 'rcp_country', 'rcp_company_vat_number', 'billing_address_1', 'billing_postcode', 'rcp_company_name', 'rcp_address', 'rcp_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country', 'rcp_country', 'rcp_company_vat_number', 'billing_address_1', 'billing_postcode', 'rcp_company_name', 'rcp_address', 'rcp_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country', 'rcp_country', 'rcp_company_vat_number', 'billing_address_1', 'billing_postcode', 'rcp_company_name', 'rcp_address', 'rcp_postcode');

