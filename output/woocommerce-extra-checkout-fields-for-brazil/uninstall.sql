-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbcf_settings', 'wcbcf_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_persontype';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cpf';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rg';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rg';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rg';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rg';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cnpj';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ie';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_birthdate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_gender';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_gender';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_gender';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_gender';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cellphone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cellphone';

