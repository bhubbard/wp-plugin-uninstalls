-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btw_general', 'btw_defaultatts', 'btw_modedefaults');

