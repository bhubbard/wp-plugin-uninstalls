-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ncm', '_barcode', '_video_youtube', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_cpf', 'billing_cnpj', 'billing_rg', 'billing_ie', 'billing_postcode', 'billing_address_1', 'billing_address_2', 'billing_number', 'billing_neighborhood', 'billing_city', 'billing_state', 'billing_birthdate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ncm', '_barcode', '_video_youtube', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_cpf', 'billing_cnpj', 'billing_rg', 'billing_ie', 'billing_postcode', 'billing_address_1', 'billing_address_2', 'billing_number', 'billing_neighborhood', 'billing_city', 'billing_state', 'billing_birthdate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ncm', '_barcode', '_video_youtube', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_cpf', 'billing_cnpj', 'billing_rg', 'billing_ie', 'billing_postcode', 'billing_address_1', 'billing_address_2', 'billing_number', 'billing_neighborhood', 'billing_city', 'billing_state', 'billing_birthdate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ncm', '_barcode', '_video_youtube', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_cpf', 'billing_cnpj', 'billing_rg', 'billing_ie', 'billing_postcode', 'billing_address_1', 'billing_address_2', 'billing_number', 'billing_neighborhood', 'billing_city', 'billing_state', 'billing_birthdate');

