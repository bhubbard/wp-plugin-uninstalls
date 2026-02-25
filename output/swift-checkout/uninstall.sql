-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swifch_settings', 'active_sitewide_plugins', 'swifch_version', 'swifch_installed_time');

