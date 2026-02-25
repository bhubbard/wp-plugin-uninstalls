-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('darven_epi_option_compatibility', 'darven_epi_option_positions', 'darven_epi_option_general');
DELETE FROM wp_options WHERE option_name LIKE 'darven_epi_option_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_darven_epi_is_incash_enabled', '_darven_epi_is_installment_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_darven_epi_is_incash_enabled', '_darven_epi_is_installment_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_darven_epi_is_incash_enabled', '_darven_epi_is_installment_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_darven_epi_is_incash_enabled', '_darven_epi_is_installment_enabled');

