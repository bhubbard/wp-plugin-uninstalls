-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title', 'speed', 'item', 'singleitem', 'stop', 'bg_color', 'height', 'pagination', 'pnumber', 'navigation', ' navigation');

