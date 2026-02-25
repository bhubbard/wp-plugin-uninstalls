-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderform_db_version', 'wonderform_version', 'wonderform_dir');

