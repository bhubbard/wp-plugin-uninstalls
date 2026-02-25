-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joomdev_wss_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('joomdev_wss_total_share_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('joomdev_wss_total_share_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('joomdev_wss_total_share_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('joomdev_wss_total_share_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_share_count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_share_count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_share_count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_share_count';

