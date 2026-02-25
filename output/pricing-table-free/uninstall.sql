-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pricing_table_wordpress_post_themes', 'pricing_table_wordpress_header_f_size', 'pricing_table_wordpress_features_f_size', 'pricing_table_wordpress_subtitle_font_color', 'pricing_table_wordpress_features_font_color', 'pricing_table_wordpress_subtitle_f_size', '_wp_page_template', 'pricing_table_wp_columns');
DELETE FROM wp_usermeta WHERE meta_key IN ('pricing_table_wordpress_post_themes', 'pricing_table_wordpress_header_f_size', 'pricing_table_wordpress_features_f_size', 'pricing_table_wordpress_subtitle_font_color', 'pricing_table_wordpress_features_font_color', 'pricing_table_wordpress_subtitle_f_size', '_wp_page_template', 'pricing_table_wp_columns');
DELETE FROM wp_termmeta WHERE meta_key IN ('pricing_table_wordpress_post_themes', 'pricing_table_wordpress_header_f_size', 'pricing_table_wordpress_features_f_size', 'pricing_table_wordpress_subtitle_font_color', 'pricing_table_wordpress_features_font_color', 'pricing_table_wordpress_subtitle_f_size', '_wp_page_template', 'pricing_table_wp_columns');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pricing_table_wordpress_post_themes', 'pricing_table_wordpress_header_f_size', 'pricing_table_wordpress_features_f_size', 'pricing_table_wordpress_subtitle_font_color', 'pricing_table_wordpress_features_font_color', 'pricing_table_wordpress_subtitle_f_size', '_wp_page_template', 'pricing_table_wp_columns');

