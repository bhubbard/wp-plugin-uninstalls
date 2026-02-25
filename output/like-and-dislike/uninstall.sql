-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ladl_enabled_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ladl_likes', '_ladl_dislikes', '_ladl_user_vote');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ladl_likes', '_ladl_dislikes', '_ladl_user_vote');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ladl_likes', '_ladl_dislikes', '_ladl_user_vote');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ladl_likes', '_ladl_dislikes', '_ladl_user_vote');

