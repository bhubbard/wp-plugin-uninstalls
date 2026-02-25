-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('threecal_settings', 'threecal_db_version', 'threecal_activated');

