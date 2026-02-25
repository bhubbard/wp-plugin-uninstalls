-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('love_me_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('love_me_like', 'love_me_hide', 'love_me_ips');
DELETE FROM wp_usermeta WHERE meta_key IN ('love_me_like', 'love_me_hide', 'love_me_ips');
DELETE FROM wp_termmeta WHERE meta_key IN ('love_me_like', 'love_me_hide', 'love_me_ips');
DELETE FROM wp_commentmeta WHERE meta_key IN ('love_me_like', 'love_me_hide', 'love_me_ips');

