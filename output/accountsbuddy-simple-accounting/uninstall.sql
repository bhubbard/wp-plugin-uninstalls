-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abas_plugin_is_activated', 'abas_main_menu_name', 'abas_accounting_logo', 'abas_accounting_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('active_company', '_company_id', '_account_number', '_account_title', '_account_type', '_account_description', '_taxonomy-abas_account_groups', '_company-logo', '_company_manual_id', '_business_type', '_address_1', '_address_2', '_city', '_state', '_country', '_zip_code', '_phone', '_email', '_currency', '_about_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('active_company', '_company_id', '_account_number', '_account_title', '_account_type', '_account_description', '_taxonomy-abas_account_groups', '_company-logo', '_company_manual_id', '_business_type', '_address_1', '_address_2', '_city', '_state', '_country', '_zip_code', '_phone', '_email', '_currency', '_about_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('active_company', '_company_id', '_account_number', '_account_title', '_account_type', '_account_description', '_taxonomy-abas_account_groups', '_company-logo', '_company_manual_id', '_business_type', '_address_1', '_address_2', '_city', '_state', '_country', '_zip_code', '_phone', '_email', '_currency', '_about_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('active_company', '_company_id', '_account_number', '_account_title', '_account_type', '_account_description', '_taxonomy-abas_account_groups', '_company-logo', '_company_manual_id', '_business_type', '_address_1', '_address_2', '_city', '_state', '_country', '_zip_code', '_phone', '_email', '_currency', '_about_company');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

