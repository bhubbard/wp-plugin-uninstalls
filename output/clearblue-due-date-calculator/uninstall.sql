-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbddc-language', 'cbddc-format', 'cbddc-show-credits', 'cbddc-version');
DELETE FROM wp_options WHERE option_name LIKE 'cbddc-color-%';

