-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woofs_settings', 'woofs_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woofs_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woofs_separately', 'woofs_sync_quantity', 'woofs_layout', 'woofs_before_text', 'woofs_after_text', 'woofs_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('woofs_separately', 'woofs_sync_quantity', 'woofs_layout', 'woofs_before_text', 'woofs_after_text', 'woofs_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('woofs_separately', 'woofs_sync_quantity', 'woofs_layout', 'woofs_before_text', 'woofs_after_text', 'woofs_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woofs_separately', 'woofs_sync_quantity', 'woofs_layout', 'woofs_before_text', 'woofs_after_text', 'woofs_ids');

