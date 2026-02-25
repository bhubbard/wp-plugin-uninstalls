-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fixbar_icon_open_handler', 'fixbar_color_open_handler', 'fixbar_icon_close_handler', 'fixbar_color_close_handler', 'fixbarVeHandler', 'fixbar_valid_post_types_handler');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fixbar_icon_open_post_key', '_fixbar_color_open_post_key', '_fixbar_icon_close_post_key', '_fixbar_color_close_post_key', '_post_ve_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fixbar_icon_open_post_key', '_fixbar_color_open_post_key', '_fixbar_icon_close_post_key', '_fixbar_color_close_post_key', '_post_ve_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fixbar_icon_open_post_key', '_fixbar_color_open_post_key', '_fixbar_icon_close_post_key', '_fixbar_color_close_post_key', '_post_ve_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fixbar_icon_open_post_key', '_fixbar_color_open_post_key', '_fixbar_icon_close_post_key', '_fixbar_color_close_post_key', '_post_ve_value_key');

