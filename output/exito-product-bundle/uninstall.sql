-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exito_addon_position', 'exito_bundle_button_label', 'exito_hide_in_sticky');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exito_addon_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exito_addon_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exito_addon_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exito_addon_product_id');

