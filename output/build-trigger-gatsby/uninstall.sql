-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ztbtfg_settings', 'ztbtfg_build_count', 'ztbtfg_last_trigger', 'ztbtfg_global_time');

