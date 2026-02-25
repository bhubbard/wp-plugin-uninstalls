-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grappin_project_id', 'grappin_identify_users', 'grappin_version');

