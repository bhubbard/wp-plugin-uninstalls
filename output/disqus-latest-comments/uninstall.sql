-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disqus_shortname', 'disqus_shortname_old', 'num_items', 'num_items_old', 'hide_avatars', 'hide_avatars_old', 'hide_moderator', 'hide_moderator_old', 'avatar_size', 'avatar_size_old', 'excerpt_length', 'excerpt_length_old', 'style', 'style_old', 'disqus_custom_css', 'disqus_custom_css_old', 'bypass_cache', 'bypass_cache_old', 'disqus_target_blank', 'disqus_target_blank_old', 'itsg_disqus_lastest_comments_addon_settings');
DELETE FROM wp_options WHERE option_name LIKE 'itsg_dlc_cache_%';

