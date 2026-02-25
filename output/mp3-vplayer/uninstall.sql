-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp3_vplayer_post_types', 'mp3_vplayer_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mp3_url', 'mp3_title', 'mp3_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('mp3_url', 'mp3_title', 'mp3_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('mp3_url', 'mp3_title', 'mp3_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mp3_url', 'mp3_title', 'mp3_author');

