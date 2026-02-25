-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookieproCCPASettings', 'cookieproCCPABehaviorSettings', 'CookieProCCPAButtonFloatings', 'cookieproCCPASettingsPreview', 'cookieproCCPABehaviorSettingsPreview');

