-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts_visitors_label_text', 'posts_visitors_checkbox_label', 'posts_visitors_checkbox_icon', 'posts_visitors_icon_class', 'posts_visitors_color', 'posts_visitors_select', 'posts_visitors_general', 'posts_visitors_shortcode', 'posts_visitors_shorcode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_visitors_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_visitors_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_visitors_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_visitors_count');

