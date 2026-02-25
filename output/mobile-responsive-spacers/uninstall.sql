-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maz_mrs_breakpoint', 'maz_mrs_ratio');

