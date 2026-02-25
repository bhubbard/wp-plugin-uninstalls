-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grappsmav_appid', 'grappsmav_payload', 'grappsmav_shop_id', 'grappsmav_register', 'grappsmav_admin_email', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_embed_landing_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_embed_landing_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_embed_landing_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_embed_landing_url');

