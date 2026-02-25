-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dropavifmo_last_scan_timestamp', 'dropavifmo_initial_scan_complete', 'dropavifmo_pending_remote_jobs', 'dropavifmo_cf_purge_error_msg', 'dropavifmo_remote_polling_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dropavifmo_conflict_notice_dismissed', '_wp_error_while_processing');
DELETE FROM wp_usermeta WHERE meta_key IN ('dropavifmo_conflict_notice_dismissed', '_wp_error_while_processing');
DELETE FROM wp_termmeta WHERE meta_key IN ('dropavifmo_conflict_notice_dismissed', '_wp_error_while_processing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dropavifmo_conflict_notice_dismissed', '_wp_error_while_processing');

