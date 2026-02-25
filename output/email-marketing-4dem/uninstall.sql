-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adv_dem', 'adv_dem_secret_key', 'adv_demsincronizza_utenti');
DELETE FROM wp_options WHERE option_name LIKE '%sincronizza_utenti';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adv_dem_consoleId', 'adv_dem_primary_category', 'adv_dem_primary_category_mid', 'adv_dem_primary_category_top', '_sku', '_billing_email', 'billing_email', 'adv_wc_opt_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('adv_dem_consoleId', 'adv_dem_primary_category', 'adv_dem_primary_category_mid', 'adv_dem_primary_category_top', '_sku', '_billing_email', 'billing_email', 'adv_wc_opt_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('adv_dem_consoleId', 'adv_dem_primary_category', 'adv_dem_primary_category_mid', 'adv_dem_primary_category_top', '_sku', '_billing_email', 'billing_email', 'adv_wc_opt_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adv_dem_consoleId', 'adv_dem_primary_category', 'adv_dem_primary_category_mid', 'adv_dem_primary_category_top', '_sku', '_billing_email', 'billing_email', 'adv_wc_opt_in');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%';

