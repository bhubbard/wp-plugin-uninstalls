-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engage_widget_settings', 'engage_widget_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_engage_widget_likes', '_engage_widget_comment_likes', '_engage_widget_dislikes', '_engage_widget_comment_dislikes', 'engage_widget_votes', 'engage_widget_comment_votes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_engage_widget_likes', '_engage_widget_comment_likes', '_engage_widget_dislikes', '_engage_widget_comment_dislikes', 'engage_widget_votes', 'engage_widget_comment_votes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_engage_widget_likes', '_engage_widget_comment_likes', '_engage_widget_dislikes', '_engage_widget_comment_dislikes', 'engage_widget_votes', 'engage_widget_comment_votes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_engage_widget_likes', '_engage_widget_comment_likes', '_engage_widget_dislikes', '_engage_widget_comment_dislikes', 'engage_widget_votes', 'engage_widget_comment_votes');

