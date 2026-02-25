-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wlsbp_service', 'wlsbp_general_service_setting', 'wlsbp_style1_service_setting', 'wlsbp_style2_service_setting', 'wlsbp_style3_service_setting', 'wlsbp_style4_service_setting', 'wlsbp_style5_service_setting', 'wlsbp_style6_service_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('wlsbp_service', 'wlsbp_general_service_setting', 'wlsbp_style1_service_setting', 'wlsbp_style2_service_setting', 'wlsbp_style3_service_setting', 'wlsbp_style4_service_setting', 'wlsbp_style5_service_setting', 'wlsbp_style6_service_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('wlsbp_service', 'wlsbp_general_service_setting', 'wlsbp_style1_service_setting', 'wlsbp_style2_service_setting', 'wlsbp_style3_service_setting', 'wlsbp_style4_service_setting', 'wlsbp_style5_service_setting', 'wlsbp_style6_service_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wlsbp_service', 'wlsbp_general_service_setting', 'wlsbp_style1_service_setting', 'wlsbp_style2_service_setting', 'wlsbp_style3_service_setting', 'wlsbp_style4_service_setting', 'wlsbp_style5_service_setting', 'wlsbp_style6_service_setting');

