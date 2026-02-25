-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp1_like_button_text', 'wp1_like_show_count', 'wp1_like_thumb_icon', 'wp1_like_post_types', 'wp1_like_button_color', 'wp1_like_button_hover_color', 'wp1_like_button_disabled_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp1_like_like');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp1_like_like');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp1_like_like');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp1_like_like');

