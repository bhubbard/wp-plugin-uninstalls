-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scporder_options', 'mtphr_postduplicator_version_upgraded_from', 'mtphr_postduplicator_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mtphr_post_duplicator_notice_dismissed_%';

