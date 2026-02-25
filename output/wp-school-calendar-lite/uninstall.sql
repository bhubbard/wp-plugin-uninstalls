-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_options', 'wpsc_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpsc_flush_rules', 'wpsc_import_data', 'wpsc_import_remove_existing', 'wpsc_pair_group_ids', 'wpsc_pair_category_ids', 'wpsc_pair_important_date_ids', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bgcolor', '_order', '_calendar_options', '_start_date', '_end_date', '_exclude_weekend', '_category_id', '_additional_notes', '_enable_recurring');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bgcolor', '_order', '_calendar_options', '_start_date', '_end_date', '_exclude_weekend', '_category_id', '_additional_notes', '_enable_recurring');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bgcolor', '_order', '_calendar_options', '_start_date', '_end_date', '_exclude_weekend', '_category_id', '_additional_notes', '_enable_recurring');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bgcolor', '_order', '_calendar_options', '_start_date', '_end_date', '_exclude_weekend', '_category_id', '_additional_notes', '_enable_recurring');

