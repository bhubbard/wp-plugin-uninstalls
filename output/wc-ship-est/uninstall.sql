-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wse_pro_version', 'wse_db_version', 'wse_uninstall', 'wse_methods', 'wse_method_update', 'wse_desc', 'wse_append_desc', 'wse_mn_days', 'wse_mx_days', 'wse_bz_days', 'wse_mon', 'wse_tue', 'wse_wed', 'wse_thu', 'wse_fri', 'wse_sat', 'wse_sun', 'wse_hol', 'wse_del_fri', 'wse_del_sat', 'wse_del_sun', 'wse_del_hol', 'wse_ctf', 'wse_date', 'wse_prd_dsp', 'wse_prd_desc', 'wse_prds_dsp', 'wse_prdx_dsp', 'wse_prds', 'wse_prd_mn_days', 'wse_prd_mx_days', 'wse_prd_bk_days', 'wse_tags', 'wse_tag_mn_days', 'wse_tag_mx_days', 'wse_tag_bk_days', 'wse_dt_format', 'wse_def_bk_days', 'wse_def_bk_desc', 'wse_cart_ct', 'wse_blo_ct', 'wse_bli_ct', 'wse_vac_begin', 'wse_vac_end', 'wse_prds_vac', 'wse_prdx_vac', 'wse_prd_dsp_title', 'wse_conv_trk', 'wse_aw_id', 'wse_aw_label');
DELETE FROM wp_options WHERE option_name IN ('wse_reviews', 'wse_merchant_id', 'wse_reviews_opt', 'wse_rvw_badge', 'wse_rvw_badge_loc', 'wse_holidays', 'wse_in_email', 'wse_in_email_desc', 'prd_dsp_title', 'wse_dismiss_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_method_id', 'delivery_est_days', 'delivery_est', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_method_id', 'delivery_est_days', 'delivery_est', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_method_id', 'delivery_est_days', 'delivery_est', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_method_id', 'delivery_est_days', 'delivery_est', '_sku');

