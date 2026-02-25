-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('UserEngageScript_domain', 'UserEngageScript__apiKey', 'UserEngageScript_toggle_version');

