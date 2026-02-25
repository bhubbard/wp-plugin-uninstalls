-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_group_name', 'auto_group_slug', 'auto_group_desc', 'auto_group_status');

