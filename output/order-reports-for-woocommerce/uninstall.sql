-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orfw_version', 'orfw_db_version', 'active_sitewide_plugins');

