-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poly_support_active_templates', 'poly_support_templates', 'poly_support_media');

