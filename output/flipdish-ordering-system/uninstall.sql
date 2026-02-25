-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'flipdish_ordering_options', 'FLIPDISH_ORDERING_VERSION', 'portal_ID', 'light_or_dark_theme', 'data_offset_value', 'transparent_background', 'apple_pay');

