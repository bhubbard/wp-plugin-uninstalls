-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wholpo_settings', 'wholesale_powerhouse_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wh_tier_lite', '_wh_hide_from_retail', 'wh_pending_approval', 'wh_tax_id', 'first_name', 'last_name', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wh_tier_lite', '_wh_hide_from_retail', 'wh_pending_approval', 'wh_tax_id', 'first_name', 'last_name', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wh_tier_lite', '_wh_hide_from_retail', 'wh_pending_approval', 'wh_tax_id', 'first_name', 'last_name', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wh_tier_lite', '_wh_hide_from_retail', 'wh_pending_approval', 'wh_tax_id', 'first_name', 'last_name', 'billing_company');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wh_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wh_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wh_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wh_price_%';

