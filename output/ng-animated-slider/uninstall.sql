-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ng_animated_slider_theme_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_custom_post_slider_btntxt', 'wp_custom_post_slider_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_custom_post_slider_btntxt', 'wp_custom_post_slider_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_custom_post_slider_btntxt', 'wp_custom_post_slider_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_custom_post_slider_btntxt', 'wp_custom_post_slider_link');

