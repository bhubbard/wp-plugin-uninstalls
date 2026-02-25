-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gts_addtopost_top_enabled', 'gts_addtopost_top', 'gts_addtopost_bottom_enabled', 'gts_addtopost_bottom');

