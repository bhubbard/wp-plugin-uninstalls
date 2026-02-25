-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lstc', 'lstc_migrate_options_complete', 'lstc_cleanup_emails_done', 'lstc_update_table_utf8_complete');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lstc_subscribe');
DELETE FROM wp_usermeta WHERE meta_key IN ('lstc_subscribe');
DELETE FROM wp_termmeta WHERE meta_key IN ('lstc_subscribe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lstc_subscribe');

