-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edhbb_enable_htaccess_blocking', 'edhbb_block_duration_days', 'edhbb_debug_info');

