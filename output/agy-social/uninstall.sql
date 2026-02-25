-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agysocial_footer_enabled', 'agysocial_footer_number', 'agysocial_footer_position', 'agysocial_footer_style');

