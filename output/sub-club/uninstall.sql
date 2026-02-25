-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subdotclub_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subdotclub_post_type', '_subdotclub_delete_premium', '_subdotclub_post_published', '_subdotclub_post_url', '_subdotclub_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subdotclub_post_type', '_subdotclub_delete_premium', '_subdotclub_post_published', '_subdotclub_post_url', '_subdotclub_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subdotclub_post_type', '_subdotclub_delete_premium', '_subdotclub_post_published', '_subdotclub_post_url', '_subdotclub_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subdotclub_post_type', '_subdotclub_delete_premium', '_subdotclub_post_published', '_subdotclub_post_url', '_subdotclub_post_id');

