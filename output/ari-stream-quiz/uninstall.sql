-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ari_stream_quiz_settings', 'ari_stream_quiz_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quiz_title', 'quiz_id', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_twitter-description');
DELETE FROM wp_usermeta WHERE meta_key IN ('quiz_title', 'quiz_id', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_twitter-description');
DELETE FROM wp_termmeta WHERE meta_key IN ('quiz_title', 'quiz_id', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_twitter-description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quiz_title', 'quiz_id', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_twitter-description');

