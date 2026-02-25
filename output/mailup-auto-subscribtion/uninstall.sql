-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mas-host', 'mas-list', 'mas-group', 'mas-confirm', 'mas-newsletter');

