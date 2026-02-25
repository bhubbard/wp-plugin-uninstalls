-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drag_n_drop_disable_auto_delete', 'dndmfu_settings');

