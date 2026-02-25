-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('directiq_id', 'directiq_key', 'directiq_authorize_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_directiq_cart_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_directiq_cart_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_directiq_cart_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_directiq_cart_id');

