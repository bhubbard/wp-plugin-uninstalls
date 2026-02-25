-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpl_email', 'bpl_ignore', 'bpl_last_run', 'bpl_notified', 'bpl_snapshot', 'bpl_active_plugins', 'bpl_all_plugins', 'update_plugins');

