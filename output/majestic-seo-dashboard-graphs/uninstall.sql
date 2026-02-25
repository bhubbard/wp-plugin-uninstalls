-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maj-comp-1', 'maj-comp-2', 'maj-comp-3', 'maj-comp-4');

