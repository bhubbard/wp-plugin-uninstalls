-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('novocall-widget-active-novocall', 'novocall-widget-code-novocall');
DELETE FROM wp_options WHERE option_name LIKE '%-active-novocall';
DELETE FROM wp_options WHERE option_name LIKE '%-code-novocall';

