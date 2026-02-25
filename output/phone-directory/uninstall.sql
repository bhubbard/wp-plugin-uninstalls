-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdhclpage', 'pd_add_new_button', 'pd_add_item_link', 'pd_lan_add_link', 'pd_lan_share_list', 'pd_map_open_street_map', 'sbd_map_api_key', 'pd_enable_rtl', 'pd_lan_view_site', 'pd_lan_gdpr_policies', 'pd_lan_gdpr_load_map_lang', 'pd_enable_gdpr_policies', 'pd_map_places_api_new', 'sbd_ot_convrt', 'option_tree', 'pd_enable_dark_mode', 'pd_lan_enable_dark_mode', 'pd_lan_dark_mode_on', 'pd_lan_light_mode_on', 'pd_custom_style', 'pd_custom_js', 'pd_enable_top_part', 'pd_lan_provide_location', 'pd_lan_distance_value', 'pd_lan_no_result_found', 'sbd_google_map_id');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_dismiss';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_active_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'qcpnd_list_item01', 'qcpd_list_item01', 'qcpd_list_conf', 'qcpnd_list_conf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'qcpnd_list_item01', 'qcpd_list_item01', 'qcpd_list_conf', 'qcpnd_list_conf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'qcpnd_list_item01', 'qcpd_list_item01', 'qcpd_list_conf', 'qcpnd_list_conf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'qcpnd_list_item01', 'qcpd_list_item01', 'qcpd_list_conf', 'qcpnd_list_conf');

