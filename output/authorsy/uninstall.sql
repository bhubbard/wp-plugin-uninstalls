-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authorsy_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ea_selected_author', 'authorsy_likes', 'authorsy_dislikes', 'authorsy_loves', 'authorsy_angry', 'authorsy_users_vote', 'authorsy_ips', 'authorsy_cookie_vote_info', 'authorsy_ips_vote_info', 'authorsy_users_vote_info', 'authorsy_like_box_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('ea_selected_author', 'authorsy_likes', 'authorsy_dislikes', 'authorsy_loves', 'authorsy_angry', 'authorsy_users_vote', 'authorsy_ips', 'authorsy_cookie_vote_info', 'authorsy_ips_vote_info', 'authorsy_users_vote_info', 'authorsy_like_box_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('ea_selected_author', 'authorsy_likes', 'authorsy_dislikes', 'authorsy_loves', 'authorsy_angry', 'authorsy_users_vote', 'authorsy_ips', 'authorsy_cookie_vote_info', 'authorsy_ips_vote_info', 'authorsy_users_vote_info', 'authorsy_like_box_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ea_selected_author', 'authorsy_likes', 'authorsy_dislikes', 'authorsy_loves', 'authorsy_angry', 'authorsy_users_vote', 'authorsy_ips', 'authorsy_cookie_vote_info', 'authorsy_ips_vote_info', 'authorsy_users_vote_info', 'authorsy_like_box_enable');

