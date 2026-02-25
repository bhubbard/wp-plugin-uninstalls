-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcexd-sensei-option', 'wcexd-users-role');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_address_1', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country', 'billing_phone', 'billing_cpf', 'billing_cnpj');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_address_1', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country', 'billing_phone', 'billing_cpf', 'billing_cnpj');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_address_1', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country', 'billing_phone', 'billing_cpf', 'billing_cnpj');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_address_1', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country', 'billing_phone', 'billing_cpf', 'billing_cnpj');

