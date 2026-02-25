-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'mdd_version', 'mdd_reindex_updated', 'mdd_reindex_option_changed', 'mdd-activated', 'mdd_wp_cron_request', 'mdd_duplicate_ids', 'mdd_sharedfile_ids', 'mdd_count_all', 'mdd_count_indexed');
DELETE FROM wp_options WHERE option_name LIKE 'mdd_count_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mdd_dismissed_notices', 'mdd_hash', '_thumbnail_id', 'mdd_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('mdd_dismissed_notices', 'mdd_hash', '_thumbnail_id', 'mdd_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('mdd_dismissed_notices', 'mdd_hash', '_thumbnail_id', 'mdd_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mdd_dismissed_notices', 'mdd_hash', '_thumbnail_id', 'mdd_size');

