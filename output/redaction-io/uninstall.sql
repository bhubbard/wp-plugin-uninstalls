-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redaction_io_apikey', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_redaction_io_regenerate_slug', '_redaction_io_keyword', '_redaction_io_lang', '_redaction_io_task_status', '_redaction_io_task_total_stage', '_redaction_io_task_current_stage', '_redaction_io_task_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_redaction_io_regenerate_slug', '_redaction_io_keyword', '_redaction_io_lang', '_redaction_io_task_status', '_redaction_io_task_total_stage', '_redaction_io_task_current_stage', '_redaction_io_task_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_redaction_io_regenerate_slug', '_redaction_io_keyword', '_redaction_io_lang', '_redaction_io_task_status', '_redaction_io_task_total_stage', '_redaction_io_task_current_stage', '_redaction_io_task_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_redaction_io_regenerate_slug', '_redaction_io_keyword', '_redaction_io_lang', '_redaction_io_task_status', '_redaction_io_task_total_stage', '_redaction_io_task_current_stage', '_redaction_io_task_id');

