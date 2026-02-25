-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_adminpanel_notices', 'lws-private-google-api-key', 'woocommerce_prices_include_tax', 'lws_woorewards_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lwss-last-used-fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('lwss-last-used-fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('lwss-last-used-fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lwss-last-used-fonts');

