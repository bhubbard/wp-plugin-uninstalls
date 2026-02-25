-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aquilaLogoSettings', 'aquilaColourSettings', 'aquila_settings', 'media_selector_attachment_id', 'aquilaAdminbarSettings');

