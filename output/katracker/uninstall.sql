-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_language');
DELETE FROM wp_options WHERE option_name LIKE '%active';
DELETE FROM wp_options WHERE option_name LIKE '%open-tracker';
DELETE FROM wp_options WHERE option_name LIKE '%announce-interval';
DELETE FROM wp_options WHERE option_name LIKE '%min-interval';
DELETE FROM wp_options WHERE option_name LIKE '%num-peers';
DELETE FROM wp_options WHERE option_name LIKE '%max-peers';
DELETE FROM wp_options WHERE option_name LIKE '%slug';
DELETE FROM wp_options WHERE option_name LIKE '%subdomain';
DELETE FROM wp_options WHERE option_name LIKE '%validate-hash';
DELETE FROM wp_options WHERE option_name LIKE '%rename-files';
DELETE FROM wp_options WHERE option_name LIKE '%tracked-access';
DELETE FROM wp_options WHERE option_name LIKE '%torrent-page';
DELETE FROM wp_options WHERE option_name LIKE '%labels';
DELETE FROM wp_options WHERE option_name LIKE '%reset-announce';
DELETE FROM wp_options WHERE option_name LIKE '%default-announce';
DELETE FROM wp_options WHERE option_name LIKE '%reset-comment';
DELETE FROM wp_options WHERE option_name LIKE '%default-comment';
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');

