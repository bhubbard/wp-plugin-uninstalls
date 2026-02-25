-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btwab_regen_thumbnails_running', 'btwab_regen_thumbnails_offset', 'btwab_settings', 'btwab_admin_ux', 'btwab_admin_ux_roles');

