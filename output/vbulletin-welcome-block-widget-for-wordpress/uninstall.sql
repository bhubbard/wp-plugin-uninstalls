-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vb_widget_forumpath', 'vb_widget_avatar_dimensions', 'vb_widget_forum_version', 'vb_widget_absolute_path', 'widget_vbulletin_login');

