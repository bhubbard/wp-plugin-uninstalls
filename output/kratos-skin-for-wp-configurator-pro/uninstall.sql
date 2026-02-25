-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_kratos_skin_license_status', 'wpc_kratos_skin_license_key', 'wpc_kratos_group_icon_width', 'wpc_kratos_sub_group_icon_width', 'wpc_kratos_icon_width', 'wpc_kratos_group_icon_height', 'wpc_kratos_sub_group_icon_height', 'wpc_kratos_icon_height', 'wpc_kratos_control_header_title', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpc_config_id', '_wpc_config_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpc_config_id', '_wpc_config_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpc_config_id', '_wpc_config_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpc_config_id', '_wpc_config_style');

