-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gift_packaging_fee');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc-gift-packaging');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc-gift-packaging');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc-gift-packaging');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc-gift-packaging');

