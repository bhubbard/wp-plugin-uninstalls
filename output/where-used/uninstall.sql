-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%';

