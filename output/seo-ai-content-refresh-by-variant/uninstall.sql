-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scr_refresh_post_types', 'scr_refresh_openai_key', 'scr_refresh_content_age', 'scr_refresh_modification_level', 'scr_refresh_batch_size', 'scr_refresh_custom_prompt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scr_refresh_last_edit', 'src_backup_revision');
DELETE FROM wp_usermeta WHERE meta_key IN ('scr_refresh_last_edit', 'src_backup_revision');
DELETE FROM wp_termmeta WHERE meta_key IN ('scr_refresh_last_edit', 'src_backup_revision');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scr_refresh_last_edit', 'src_backup_revision');

