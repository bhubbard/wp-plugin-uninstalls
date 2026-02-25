-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfseo_settings', 'sfseo_visits_history', 'sfseo_visits_counts', 'sfseo_visits_daily', 'sfseo_visits', 'sfseo_404_log', 'sfs_404_log', 'sfseo_botblock_mode', 'sfseo_botlog_ip_v', 'sfseo_migrated_prefixes', 'sfseo_quick_wins', 'sfseo_bb_disabled', 'sfseo_activation_error', 'sfs_quick_wins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfs_noindex', '_sfs_nofollow', '_sfs_canonical', '_sfs_title', '_sfs_desc', 'sfseo_titles_per_page', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfs_noindex', '_sfs_nofollow', '_sfs_canonical', '_sfs_title', '_sfs_desc', 'sfseo_titles_per_page', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfs_noindex', '_sfs_nofollow', '_sfs_canonical', '_sfs_title', '_sfs_desc', 'sfseo_titles_per_page', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfs_noindex', '_sfs_nofollow', '_sfs_canonical', '_sfs_title', '_sfs_desc', 'sfseo_titles_per_page', '_wp_attachment_image_alt');

