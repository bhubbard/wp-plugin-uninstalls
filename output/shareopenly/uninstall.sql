-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shareopenly_text', 'shareopenly_priority', 'shareopenly_type');

