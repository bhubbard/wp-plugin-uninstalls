-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteorigin_pricetable_wp_welcome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nk_price_table', 'pricetable_wp_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('nk_price_table', 'pricetable_wp_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('nk_price_table', 'pricetable_wp_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nk_price_table', 'pricetable_wp_setting');

