-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dfrps_configuration', 'dfrpswc_options', 'dfrapi_networks', 'dfrpswc_version', 'wc_term_counts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_dfrps_product_set_id', 'total_sales', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product', '_dfrps_is_dfrpswc_product', '_dfrps_cpt_terms');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_dfrps_product_set_id', 'total_sales', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product', '_dfrps_is_dfrpswc_product', '_dfrps_cpt_terms');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_dfrps_product_set_id', 'total_sales', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product', '_dfrps_is_dfrpswc_product', '_dfrps_cpt_terms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_dfrps_product_set_id', 'total_sales', '_dfrps_cpt_last_update_num_products_deleted', '_dfrps_product', '_dfrps_is_dfrpswc_product', '_dfrps_cpt_terms');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%';

