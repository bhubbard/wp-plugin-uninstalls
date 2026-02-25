-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_titles', 'section_alignment', 'section_bg_color', 'text_color', 'success_text_color', 'error_text_color', 'alert_font_family', 'alert_font_style', 'alert_font_weight', 'like_bg_color', 'like_color', 'like_loader_color', 'like_loader_border_color', 'dislike_bg_color', 'dislike_color', 'dislike_loader_color', 'dislike_loader_border_color', 'section_padding');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('like', 'dislike', 'userips');
DELETE FROM wp_usermeta WHERE meta_key IN ('like', 'dislike', 'userips');
DELETE FROM wp_termmeta WHERE meta_key IN ('like', 'dislike', 'userips');
DELETE FROM wp_commentmeta WHERE meta_key IN ('like', 'dislike', 'userips');

