-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdp_settings', 'skip_standard_dup', 'mpd_admin_bulk_notice', 'mpd_admin_notice', 'source_acf_files', 'source_acf_images', 'source_acf_gallery_images', 'mpd_considerations', 'mpd_noted_posttypes', 'mpd_noted_taxonomies', 'mpd_has_dismissed_subdomain_error', 'mdp_version', 'avoid_infinite', 'avoid_infinite_persist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mpd_media_source_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mpd_media_source_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mpd_media_source_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mpd_media_source_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mpd_meta_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mpd_meta_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mpd_meta_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mpd_meta_id_%';

