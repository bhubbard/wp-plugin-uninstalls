-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquid_seo_toggle', 'liquid_admin_notices');

