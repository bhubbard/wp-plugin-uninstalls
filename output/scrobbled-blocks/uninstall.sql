-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scrobbled_blocks_username', 'scrobbled_blocks_api_key', 'scrobbled_blocks_placeholder_id');
DELETE FROM wp_options WHERE option_name LIKE '%_stale';

