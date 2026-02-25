-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_payhip_sell_digital_slug', 'wp_payhip_sell_digital_review_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product');
DELETE FROM wp_usermeta WHERE meta_key IN ('product');
DELETE FROM wp_termmeta WHERE meta_key IN ('product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product');

