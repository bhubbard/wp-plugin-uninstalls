-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asef_etag', 'asef_remote_block_list', 'asef_enable');

