-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vimeotheque_setup_activated', 'vimeotheque_updated_slugs', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '__vimeo_image_uri', 'video_thumbnail', 'theme', 'columns', 'playback');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '__vimeo_image_uri', 'video_thumbnail', 'theme', 'columns', 'playback');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '__vimeo_image_uri', 'video_thumbnail', 'theme', 'columns', 'playback');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '__vimeo_image_uri', 'video_thumbnail', 'theme', 'columns', 'playback');

