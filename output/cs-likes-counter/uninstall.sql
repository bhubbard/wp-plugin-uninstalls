-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cs_post_likes', 'cs_post_dislikes', 'cs_vote_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('cs_post_likes', 'cs_post_dislikes', 'cs_vote_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('cs_post_likes', 'cs_post_dislikes', 'cs_vote_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cs_post_likes', 'cs_post_dislikes', 'cs_vote_ip');

