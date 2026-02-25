-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_gp_enabled_plugin');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ns_gift_price_custom_tab', '_sold_individually', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('ns_gift_price_custom_tab', '_sold_individually', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('ns_gift_price_custom_tab', '_sold_individually', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ns_gift_price_custom_tab', '_sold_individually', '_regular_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'price%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'price%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'price%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'price%';

