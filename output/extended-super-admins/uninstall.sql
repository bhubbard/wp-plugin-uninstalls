-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_esa_deleted_deprecated_role', '_esa_capsCodexInfo', 'active_sitewide_plugins', '_esa_capsCodexInfo');

