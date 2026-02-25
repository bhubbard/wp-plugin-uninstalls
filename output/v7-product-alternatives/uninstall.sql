-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('v7pa_title_text', 'v7pa_button_text', 'v7pa_accent_color', 'v7pa_text_color', 'v7pa_bg_color', 'v7pa_border_radius', 'v7pa_show_brand', 'v7pa_show_price');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_v7pa_alt_product', '_brand', 'brand');
DELETE FROM wp_usermeta WHERE meta_key IN ('_v7pa_alt_product', '_brand', 'brand');
DELETE FROM wp_termmeta WHERE meta_key IN ('_v7pa_alt_product', '_brand', 'brand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_v7pa_alt_product', '_brand', 'brand');

