-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_js_google_fonts_subsets', 'title_font_settings', 'headline_font_settings', 'meta_font_settings', 'excerpt_font_settings', 'button_font_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_category_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_category_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_category_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_category_color');

