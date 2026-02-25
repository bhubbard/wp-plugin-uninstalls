-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sticklyui_version', 'sticklyui_contact_settings', 'sticklyui_header_settings', 'sticklyui_buttons_cache');

