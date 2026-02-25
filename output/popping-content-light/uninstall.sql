-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otw_overlays', 'otw_admin_settings', 'otw_upd_plug', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dnms';
DELETE FROM wp_options WHERE option_name LIKE '%_templates';

