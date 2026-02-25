-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thumordoreact_label_text', 'thumordoreact_like_text', 'thumordoreact_dislike_text', 'thumordoreact_color', 'thumordoreact_thumb_size', 'thumordoreact_count_size', 'thumordoreact_vote_message_size', 'thumordoreact_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumordoreact_likes', '_thumordoreact_dislikes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumordoreact_likes', '_thumordoreact_dislikes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumordoreact_likes', '_thumordoreact_dislikes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumordoreact_likes', '_thumordoreact_dislikes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_thumordoreact_ip_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_thumordoreact_ip_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_thumordoreact_ip_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_thumordoreact_ip_%';

