-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_everything_settings', 'disable_everything_dbtype', 'disable_everything_dbversion');

