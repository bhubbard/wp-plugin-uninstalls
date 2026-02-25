-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_shop_hacker_apikey', 'woo_shop_hacker_apisecret', 'woo_shop_hacker_merchantid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shop_hacker_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shop_hacker_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shop_hacker_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shop_hacker_sent');

