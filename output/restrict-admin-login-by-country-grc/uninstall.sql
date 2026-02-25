-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grcsecdev_allowed_countries', 'grcsecdev_installer_country');

