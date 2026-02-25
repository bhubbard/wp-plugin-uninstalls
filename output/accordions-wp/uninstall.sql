-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themepoints_accordion_theme', 'accordion_content_font_pages');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_accordion_columns_post_themes', 'custom_accordion_title_bg_color', 'custom_accordion_title_font_color', 'custom_accordion_title_font_size', 'custom_accordion_content_bg_color', 'custom_accordion_content_font_color', 'custom_accordion_content_font_size', 'custom_accordion_content_padding', '_tpaccpro_wiki_acc_themes_title_position', '_tpaccpro_wiki_acc_themes_show_hide_icons', '_tpaccpro_wiki_acc_themes_icon_position', '_tpaccpro_wiki_acc_theme_content_margin', '_wp_page_template', 'custom_accordion_wordpresspro_columns');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_accordion_columns_post_themes', 'custom_accordion_title_bg_color', 'custom_accordion_title_font_color', 'custom_accordion_title_font_size', 'custom_accordion_content_bg_color', 'custom_accordion_content_font_color', 'custom_accordion_content_font_size', 'custom_accordion_content_padding', '_tpaccpro_wiki_acc_themes_title_position', '_tpaccpro_wiki_acc_themes_show_hide_icons', '_tpaccpro_wiki_acc_themes_icon_position', '_tpaccpro_wiki_acc_theme_content_margin', '_wp_page_template', 'custom_accordion_wordpresspro_columns');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_accordion_columns_post_themes', 'custom_accordion_title_bg_color', 'custom_accordion_title_font_color', 'custom_accordion_title_font_size', 'custom_accordion_content_bg_color', 'custom_accordion_content_font_color', 'custom_accordion_content_font_size', 'custom_accordion_content_padding', '_tpaccpro_wiki_acc_themes_title_position', '_tpaccpro_wiki_acc_themes_show_hide_icons', '_tpaccpro_wiki_acc_themes_icon_position', '_tpaccpro_wiki_acc_theme_content_margin', '_wp_page_template', 'custom_accordion_wordpresspro_columns');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_accordion_columns_post_themes', 'custom_accordion_title_bg_color', 'custom_accordion_title_font_color', 'custom_accordion_title_font_size', 'custom_accordion_content_bg_color', 'custom_accordion_content_font_color', 'custom_accordion_content_font_size', 'custom_accordion_content_padding', '_tpaccpro_wiki_acc_themes_title_position', '_tpaccpro_wiki_acc_themes_show_hide_icons', '_tpaccpro_wiki_acc_themes_icon_position', '_tpaccpro_wiki_acc_theme_content_margin', '_wp_page_template', 'custom_accordion_wordpresspro_columns');

