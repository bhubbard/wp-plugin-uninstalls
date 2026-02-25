-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pg_cat_colors_enable_pills', 'pg_cat_colors_enable_tint', 'pg_cat_colors_enable_underline', 'pg_cat_colors_default_color', 'pg_cat_colors_pill_gap', 'pg_cat_colors_border_thickness', 'pg_cat_colors_pill_shape', 'pg_cat_colors_case_storage', 'pg_cat_colors_case_auto', 'pg_cat_colors_case_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pg_category_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pg_category_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pg_category_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pg_category_color');

