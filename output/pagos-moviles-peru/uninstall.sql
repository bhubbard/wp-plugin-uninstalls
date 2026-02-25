-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pago_moviles_peru_version', 'yape_a1tiendas_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yape_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yape_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yape_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yape_img');

