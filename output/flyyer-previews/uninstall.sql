-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flyyer_project_slug');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

