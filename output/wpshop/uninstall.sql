-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_dolibarr', 'wpshop2_database_version', 'wps_page_ids', 'plugin_permalinks_flushed', 'wps_shipping_cost', 'wps_payment_methods', 'wps_product_already_exist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file', '_wpshop_api_key', '_external_id', 'p_user_registration_code', '_sync_sha_256', 'fullpath', 'size', 'email', '_traitment_in_progress', '_tracking_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file', '_wpshop_api_key', '_external_id', 'p_user_registration_code', '_sync_sha_256', 'fullpath', 'size', 'email', '_traitment_in_progress', '_tracking_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file', '_wpshop_api_key', '_external_id', 'p_user_registration_code', '_sync_sha_256', 'fullpath', 'size', 'email', '_traitment_in_progress', '_tracking_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file', '_wpshop_api_key', '_external_id', 'p_user_registration_code', '_sync_sha_256', 'fullpath', 'size', 'email', '_traitment_in_progress', '_tracking_link');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_level';

