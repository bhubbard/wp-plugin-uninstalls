-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpnakama_update_indicator', 'wpnakama_plugin_sale', 'wpnakama_subscriber', 'wpnakama_license', 'wpnakama_rating', 'wpnakama_license_message');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_info';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpnakama_board_id', 'wpnakama_feature_info_notice_dissmiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpnakama_board_id', 'wpnakama_feature_info_notice_dissmiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpnakama_board_id', 'wpnakama_feature_info_notice_dissmiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpnakama_board_id', 'wpnakama_feature_info_notice_dissmiss');

