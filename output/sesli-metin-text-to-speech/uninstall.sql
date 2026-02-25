-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sesli_metin_person', 'sesli_metin_email', 'sesli_metin_password', 'sesli_metin_pitch', 'sesli_metin_speed', 'sesli_metin_post_types', 'sesli_metin_language');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sesli_metin_audio_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sesli_metin_audio_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sesli_metin_audio_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sesli_metin_audio_url');

