-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sjs_start', 'sjs_speed', 'sjs_delay', 'sjs_controls', 'sjs_pagination');

