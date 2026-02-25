-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EXT_SITE_URL', 'active_sitewide_plugins', 'recently_activated');

