-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('options_meta_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bgseo_canonical', 'bgseo_title', 'bgseo_description', 'meta_description', 'bgseo_robots_follow', 'bgseo_robots_index', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('bgseo_canonical', 'bgseo_title', 'bgseo_description', 'meta_description', 'bgseo_robots_follow', 'bgseo_robots_index', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('bgseo_canonical', 'bgseo_title', 'bgseo_description', 'meta_description', 'bgseo_robots_follow', 'bgseo_robots_index', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bgseo_canonical', 'bgseo_title', 'bgseo_description', 'meta_description', 'bgseo_robots_follow', 'bgseo_robots_index', '_wp_attachment_image_alt');

