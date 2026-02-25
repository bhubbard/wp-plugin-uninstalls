-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('matw_active_template', 'materials_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('matw_material_image', 'short_description', '_matw_material_units');
DELETE FROM wp_usermeta WHERE meta_key IN ('matw_material_image', 'short_description', '_matw_material_units');
DELETE FROM wp_termmeta WHERE meta_key IN ('matw_material_image', 'short_description', '_matw_material_units');
DELETE FROM wp_commentmeta WHERE meta_key IN ('matw_material_image', 'short_description', '_matw_material_units');

