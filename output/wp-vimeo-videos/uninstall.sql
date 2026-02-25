-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgv_settings', 'dgv_tmp_files', 'dgv_last_metadata_sync', 'dgv_last_status_sync', 'dgv_settings_backup', 'dgv_news');
DELETE FROM wp_options WHERE option_name LIKE '%_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dgv_response', 'dgv_link', 'dgv_context', 'dgv_last_sync_at', 'dgv_source', 'dgv_size', 'dgv');
DELETE FROM wp_usermeta WHERE meta_key IN ('dgv_response', 'dgv_link', 'dgv_context', 'dgv_last_sync_at', 'dgv_source', 'dgv_size', 'dgv');
DELETE FROM wp_termmeta WHERE meta_key IN ('dgv_response', 'dgv_link', 'dgv_context', 'dgv_last_sync_at', 'dgv_source', 'dgv_size', 'dgv');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dgv_response', 'dgv_link', 'dgv_context', 'dgv_last_sync_at', 'dgv_source', 'dgv_size', 'dgv');

