-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bsk_gfbl_db_ver_', '_bsk_gfbl_db_upgrading_', '_bsk_gfblcv_free_to_pro_done_', '_bsk_gfbl_integrate_cf7_blacklist_done_', '_bsk_gfbl_cf7_blacklist_list_id_mapping_', '_bsk_gfbl_integrate_cf7_blacklist_doing_');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_blacklist_form_list_data_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_blacklist_form_list_data_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_blacklist_form_list_data_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_blacklist_form_list_data_');

