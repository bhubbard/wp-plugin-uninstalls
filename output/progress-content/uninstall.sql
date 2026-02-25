-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('progcontent_color_bar', 'progcontent_post_type_bar', 'progcontent_height_bar', 'progcontent_style_bar');

