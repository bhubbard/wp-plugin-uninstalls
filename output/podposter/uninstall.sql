-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('podposter_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('podposter_channel', 'podposter_description', 'podposter_category', 'podposter_email', 'podposter_author', 'podposter_copyright', 'podposter_language', 'podposter_explicit', 'podposter_audio_url', 'podposter_length', 'podposter_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('podposter_channel', 'podposter_description', 'podposter_category', 'podposter_email', 'podposter_author', 'podposter_copyright', 'podposter_language', 'podposter_explicit', 'podposter_audio_url', 'podposter_length', 'podposter_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('podposter_channel', 'podposter_description', 'podposter_category', 'podposter_email', 'podposter_author', 'podposter_copyright', 'podposter_language', 'podposter_explicit', 'podposter_audio_url', 'podposter_length', 'podposter_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('podposter_channel', 'podposter_description', 'podposter_category', 'podposter_email', 'podposter_author', 'podposter_copyright', 'podposter_language', 'podposter_explicit', 'podposter_audio_url', 'podposter_length', 'podposter_size');

