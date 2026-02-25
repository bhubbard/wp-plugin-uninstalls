-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awrpg_galleryTables');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_awesome';
DELETE FROM wp_options WHERE option_name LIKE '%_lightcs';
DELETE FROM wp_options WHERE option_name LIKE '%_jgalery';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_awrpg_video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_awrpg_video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_awrpg_video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_awrpg_video_url');

