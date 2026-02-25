-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wkidcg_fallback_color_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wkidcg_dominant_color', 'wkidcg_colors_palette');
DELETE FROM wp_usermeta WHERE meta_key IN ('wkidcg_dominant_color', 'wkidcg_colors_palette');
DELETE FROM wp_termmeta WHERE meta_key IN ('wkidcg_dominant_color', 'wkidcg_colors_palette');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wkidcg_dominant_color', 'wkidcg_colors_palette');

