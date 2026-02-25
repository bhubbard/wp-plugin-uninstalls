-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_exacttarget_settings', 'gf_exacttarget_version', 'recently_activated', 'extr_lists_all', 'extr_lists_raw', 'extr_lists');

