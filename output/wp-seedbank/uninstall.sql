-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_seedbank_version', 'seedbank_options');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_scientific_name_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_expiry_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_expiry_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_expiry_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_expiry_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_common_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_common_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_common_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_common_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_quantity';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_quantity';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_quantity';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_quantity';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seed_expiry_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seed_expiry_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seed_expiry_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seed_expiry_date';

