-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('db_tagcloud_cols', 'db_tagcloud_fontsize', 'db_tagcloud_fontweight', 'db_tagcloud_borderwidth', 'db_tagcloud_underlined', 'db_tagcloud_underlined_hover', 'db_tagcloud_color', 'db_tagcloud_color_hover', 'db_tagcloud_background', 'db_tagcloud_background_hover');

