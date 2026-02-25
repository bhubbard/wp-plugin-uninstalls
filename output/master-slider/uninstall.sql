-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('masterslider_lite_plugin_version', '_depicter_intro_modal_skip_time', 'masterslider_is_license_actived', 'master-slider_ab_pro_feature_setting_content_type', 'masterslider_db_version', 'master-slider_ab_pro_feature_panel_content_type', 'masterslider_capabilities_added', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_is_license_actived';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'rich_editing', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'rich_editing', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'rich_editing', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'rich_editing', 'total_sales');

