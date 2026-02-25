-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_marketplace_version', 'alg_mpwc_opt_commissions_create_zero', 'alg_mpwc_opt_vendor_product_tab_content', 'alg_mpwc_product_loop_vendor_info', 'default_post_edit_rows', 'alg_mpwc_blocked_users', 'woocommerce_myaccount_page_id', 'active_sitewide_plugins', 'alg_mpwc_opt_public_page_rating', 'alg_mpwc_opt_public_page_rating_template');
DELETE FROM wp_options WHERE option_name LIKE 'alg_mpwc_vendor_rating_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_mpwc_related_commissions', '_alg_mpwc_author_id', '_alg_mpwc_product_ids', '_alg_mpwc_comission_fixed_value', '_alg_mpwc_comission_percentage_value', '_alg_mpwc_comission_final_value', '_alg_mpwc_currency', '_price', 'mpwc_sum_ref_comm_total_val', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_mpwc_related_commissions', '_alg_mpwc_author_id', '_alg_mpwc_product_ids', '_alg_mpwc_comission_fixed_value', '_alg_mpwc_comission_percentage_value', '_alg_mpwc_comission_final_value', '_alg_mpwc_currency', '_price', 'mpwc_sum_ref_comm_total_val', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_mpwc_related_commissions', '_alg_mpwc_author_id', '_alg_mpwc_product_ids', '_alg_mpwc_comission_fixed_value', '_alg_mpwc_comission_percentage_value', '_alg_mpwc_comission_final_value', '_alg_mpwc_currency', '_price', 'mpwc_sum_ref_comm_total_val', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_mpwc_related_commissions', '_alg_mpwc_author_id', '_alg_mpwc_product_ids', '_alg_mpwc_comission_fixed_value', '_alg_mpwc_comission_percentage_value', '_alg_mpwc_comission_final_value', '_alg_mpwc_currency', '_price', 'mpwc_sum_ref_comm_total_val', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

