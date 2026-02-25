-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wp_nv_fb_appid', '_wp_nv_fb_twiter_text', '_wp_nv_fb_twiter_text1', '_wp_nv_fb_twiter_text2', '_wp_nv_mode', '_wp_nv_fb_twiter_text3');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vote_category', 'voter_nomineeid', 'voter_nomineename');
DELETE FROM wp_usermeta WHERE meta_key IN ('vote_category', 'voter_nomineeid', 'voter_nomineename');
DELETE FROM wp_termmeta WHERE meta_key IN ('vote_category', 'voter_nomineeid', 'voter_nomineename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vote_category', 'voter_nomineeid', 'voter_nomineename');

