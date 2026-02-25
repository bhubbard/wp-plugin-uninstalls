-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_ifso_geo_license_key', 'edd_ifso_geo_license_status', 'edd_ifso_geo_license_expires', 'edd_ifso_license_key', 'edd_ifso_license_status', 'edd_ifso_license_expires', 'edd_ifso_license_item_id', 'ifso_db_version', 'ifso_wp_version', 'edd_ifso_geo_license_item_id', 'edd_ifso_user_deactivated_license', 'edd_ifso_geo_license_item_name', 'edd_ifso_had_geo_license', 'edd_ifso_user_deactivated_geo_license', 'edd_ifso_license_item_name', 'edd_ifso_had_license', 'ifso_groups_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ifso_trigger_rules', 'ifso_trigger_default_metadata', 'ifso_trigger_default', 'ifso_trigger_version', '_wpb_shortcodes_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('ifso_trigger_rules', 'ifso_trigger_default_metadata', 'ifso_trigger_default', 'ifso_trigger_version', '_wpb_shortcodes_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('ifso_trigger_rules', 'ifso_trigger_default_metadata', 'ifso_trigger_default', 'ifso_trigger_version', '_wpb_shortcodes_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ifso_trigger_rules', 'ifso_trigger_default_metadata', 'ifso_trigger_default', 'ifso_trigger_version', '_wpb_shortcodes_custom_css');

