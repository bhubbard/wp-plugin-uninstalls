-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dfrapi_account', 'dfrps_configuration', 'dfrps_registered_cpts', 'dfrps_do_batch_image_import', 'dfrapi_networks', 'dfrapi_merchants', 'dfrps_db_version', 'dfrapi_coupon_networks', 'dfrps_version', 'dfrps_doing_update');
DELETE FROM wp_options WHERE option_name LIKE '%_configuration';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dfrps_has_been_published', '_dfrps_cpt_type', '_dfrps_cpt_next_update_time', '_dfrps_update_schedule', '_dfrps_cpt_update_phase', '_dfrps_cpt_last_update_time_started', '_dfrps_cpt_last_update_time_completed', '_dfrps_cpt_last_update_num_api_requests', '_dfrps_cpt_last_update_num_products_added', '_dfrps_cpt_query', '_dfrps_cpt_temp_query', '_dfrps_cpt_errors', '_dfrps_cpt_previous_update_info', '_dfrps_cpt_offset', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product_check_image', '_dfrps_cpt_update_iteration', '_dfrps_cpt_manually_blocked_ids', '_dfrps_cpt_manually_added_ids', '_dfrps_cpt_terms', '_dfrps_current_version', '_dfrps_cpt_categories', '_dfrps_option_ids', '_dfrps_cpt_categories_history', '_dfrps_cpt_import_into', '_dfrps_product', '_dfrps_featured_image_url', '_dfrps_product_set_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dfrps_has_been_published', '_dfrps_cpt_type', '_dfrps_cpt_next_update_time', '_dfrps_update_schedule', '_dfrps_cpt_update_phase', '_dfrps_cpt_last_update_time_started', '_dfrps_cpt_last_update_time_completed', '_dfrps_cpt_last_update_num_api_requests', '_dfrps_cpt_last_update_num_products_added', '_dfrps_cpt_query', '_dfrps_cpt_temp_query', '_dfrps_cpt_errors', '_dfrps_cpt_previous_update_info', '_dfrps_cpt_offset', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product_check_image', '_dfrps_cpt_update_iteration', '_dfrps_cpt_manually_blocked_ids', '_dfrps_cpt_manually_added_ids', '_dfrps_cpt_terms', '_dfrps_current_version', '_dfrps_cpt_categories', '_dfrps_option_ids', '_dfrps_cpt_categories_history', '_dfrps_cpt_import_into', '_dfrps_product', '_dfrps_featured_image_url', '_dfrps_product_set_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dfrps_has_been_published', '_dfrps_cpt_type', '_dfrps_cpt_next_update_time', '_dfrps_update_schedule', '_dfrps_cpt_update_phase', '_dfrps_cpt_last_update_time_started', '_dfrps_cpt_last_update_time_completed', '_dfrps_cpt_last_update_num_api_requests', '_dfrps_cpt_last_update_num_products_added', '_dfrps_cpt_query', '_dfrps_cpt_temp_query', '_dfrps_cpt_errors', '_dfrps_cpt_previous_update_info', '_dfrps_cpt_offset', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product_check_image', '_dfrps_cpt_update_iteration', '_dfrps_cpt_manually_blocked_ids', '_dfrps_cpt_manually_added_ids', '_dfrps_cpt_terms', '_dfrps_current_version', '_dfrps_cpt_categories', '_dfrps_option_ids', '_dfrps_cpt_categories_history', '_dfrps_cpt_import_into', '_dfrps_product', '_dfrps_featured_image_url', '_dfrps_product_set_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dfrps_has_been_published', '_dfrps_cpt_type', '_dfrps_cpt_next_update_time', '_dfrps_update_schedule', '_dfrps_cpt_update_phase', '_dfrps_cpt_last_update_time_started', '_dfrps_cpt_last_update_time_completed', '_dfrps_cpt_last_update_num_api_requests', '_dfrps_cpt_last_update_num_products_added', '_dfrps_cpt_query', '_dfrps_cpt_temp_query', '_dfrps_cpt_errors', '_dfrps_cpt_previous_update_info', '_dfrps_cpt_offset', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product_check_image', '_dfrps_cpt_update_iteration', '_dfrps_cpt_manually_blocked_ids', '_dfrps_cpt_manually_added_ids', '_dfrps_cpt_terms', '_dfrps_current_version', '_dfrps_cpt_categories', '_dfrps_option_ids', '_dfrps_cpt_categories_history', '_dfrps_cpt_import_into', '_dfrps_product', '_dfrps_featured_image_url', '_dfrps_product_set_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_pass';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_pass';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_pass';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_pass';

