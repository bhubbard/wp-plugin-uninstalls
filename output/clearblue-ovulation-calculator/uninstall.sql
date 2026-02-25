-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cboc-language', 'cboc-format', 'cboc-show-credits', 'cbddc-version', 'cbddc-show-credits');
DELETE FROM wp_options WHERE option_name LIKE 'cboc-color-%';

