-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magical_blocks_version', 'magical_blocks_has_pro', 'magical_blocks_settings');

