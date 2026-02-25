-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ondokusan_do_activation_redirect', 'ondokusan_settings', 'ondokusan_last_result', 'ondokusan_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ondoku_mp3_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('ondoku_mp3_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('ondoku_mp3_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ondoku_mp3_url');

