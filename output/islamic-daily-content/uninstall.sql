-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isladaco_quran_enabled', 'isladaco_hadith_enabled', 'isladaco_post_time', 'isladaco_post_status', 'isladaco_quran_category', 'isladaco_hadith_category', 'isladaco_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'isladaco_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_isladaco_content_type', '_isladaco_surah', '_isladaco_ayah');
DELETE FROM wp_usermeta WHERE meta_key IN ('_isladaco_content_type', '_isladaco_surah', '_isladaco_ayah');
DELETE FROM wp_termmeta WHERE meta_key IN ('_isladaco_content_type', '_isladaco_surah', '_isladaco_ayah');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_isladaco_content_type', '_isladaco_surah', '_isladaco_ayah');

