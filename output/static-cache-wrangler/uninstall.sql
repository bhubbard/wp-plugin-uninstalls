-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stcw_pending_assets', 'stcw_downloaded_assets', 'stcw_enabled');

