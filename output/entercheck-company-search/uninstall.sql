-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('entercheck_plugin_options', 'entercheck_plugin_options_fields', 'entercheck_plugin_options_form_mapping');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('company_base', 'invoice_address', 'company_info', 'billing_first_name', 'billing_last_name', 'billing_company', 'bizid', 'vat', 'billing_address_1', 'billing_postcode', 'billing_city', 'entercheck_bsuiness_id', 'entercheck_vat_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('company_base', 'invoice_address', 'company_info', 'billing_first_name', 'billing_last_name', 'billing_company', 'bizid', 'vat', 'billing_address_1', 'billing_postcode', 'billing_city', 'entercheck_bsuiness_id', 'entercheck_vat_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('company_base', 'invoice_address', 'company_info', 'billing_first_name', 'billing_last_name', 'billing_company', 'bizid', 'vat', 'billing_address_1', 'billing_postcode', 'billing_city', 'entercheck_bsuiness_id', 'entercheck_vat_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('company_base', 'invoice_address', 'company_info', 'billing_first_name', 'billing_last_name', 'billing_company', 'bizid', 'vat', 'billing_address_1', 'billing_postcode', 'billing_city', 'entercheck_bsuiness_id', 'entercheck_vat_id');

