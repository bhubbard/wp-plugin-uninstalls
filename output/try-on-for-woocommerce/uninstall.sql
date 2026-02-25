-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('specfit_platinum_access_key', 'specfit_platinum_access_email', 'specfit_default_3d_params', 'specfit_settings_texts', 'specfit_header_logo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('try_on_image_specfit_platinum', 'specfit_product_try_on_color_keys');
DELETE FROM wp_usermeta WHERE meta_key IN ('try_on_image_specfit_platinum', 'specfit_product_try_on_color_keys');
DELETE FROM wp_termmeta WHERE meta_key IN ('try_on_image_specfit_platinum', 'specfit_product_try_on_color_keys');
DELETE FROM wp_commentmeta WHERE meta_key IN ('try_on_image_specfit_platinum', 'specfit_product_try_on_color_keys');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'specfit_product_try_on_color_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%';

