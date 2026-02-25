-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccoos_tracking_numbers', 'ccoos_api_key', 'ccoos_frequency', 'ccoos_email_on_update', 'ccoos_tracking_suppress_note_email', 'ccoos_tracking_mark_completed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_discontinued', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_discontinued', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_discontinued', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_discontinued', '_stock_status');

