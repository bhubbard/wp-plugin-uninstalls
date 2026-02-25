-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooapisync_db_version', 'wooapisync_jobs', 'wooapisync_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wooapisync_disable_auto');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wooapisync_disable_auto');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wooapisync_disable_auto');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wooapisync_disable_auto');

