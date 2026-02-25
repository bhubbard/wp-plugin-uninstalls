-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vkExUnit_common_options', 'pad_plugin_options', 'vk_font_awesome_version', 'vk_font_awesome_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_profile_image', 'pad_hide_post_author', 'term_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_profile_image', 'pad_hide_post_author', 'term_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_profile_image', 'pad_hide_post_author', 'term_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_profile_image', 'pad_hide_post_author', 'term_color');

