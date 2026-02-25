-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapapostnag', 'wapacomnag', 'wapaloc', 'wapaemail', 'dismissed_update_core', 'update_plugins', 'update_themes', 'update_core');

