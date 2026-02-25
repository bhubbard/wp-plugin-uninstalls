-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_db_version', 'wp_partita_iva_settings', 'wp_partita_iva_cron__timed_job');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_vat', 'billing_cf', 'billing_nin', 'billing_pec', 'billing_fatt', '_billing_vat', '_billing_cf', '_billing_nin', '_billing_pec', '_billing_fatt', '_billing_first_name', '_billing_last_name', '_billing_company', '_billing_email', '_billing_phone', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_vat', 'billing_cf', 'billing_nin', 'billing_pec', 'billing_fatt', '_billing_vat', '_billing_cf', '_billing_nin', '_billing_pec', '_billing_fatt', '_billing_first_name', '_billing_last_name', '_billing_company', '_billing_email', '_billing_phone', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_vat', 'billing_cf', 'billing_nin', 'billing_pec', 'billing_fatt', '_billing_vat', '_billing_cf', '_billing_nin', '_billing_pec', '_billing_fatt', '_billing_first_name', '_billing_last_name', '_billing_company', '_billing_email', '_billing_phone', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_vat', 'billing_cf', 'billing_nin', 'billing_pec', 'billing_fatt', '_billing_vat', '_billing_cf', '_billing_nin', '_billing_pec', '_billing_fatt', '_billing_first_name', '_billing_last_name', '_billing_company', '_billing_email', '_billing_phone', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_postcode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sent_to_seller_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sent_to_seller_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sent_to_seller_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sent_to_seller_%';

