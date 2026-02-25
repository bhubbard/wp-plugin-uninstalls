-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_body_background_color_picker', 'page_content_background_color_picker', 'post_body_background_color_picker', 'post_content_background_color_picker', 'widgets_background_color_picker', 'my_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('body_background_color', 'content_background_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('body_background_color', 'content_background_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('body_background_color', 'content_background_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('body_background_color', 'content_background_color');

