-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipages_flipbook_db_version', 'ipages_flipbook_activated', 'ipages_flipbook_settings');

