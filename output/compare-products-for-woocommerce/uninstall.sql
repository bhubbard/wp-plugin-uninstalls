-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_cp_cl_use_modal', 'alg_wc_cp_default_btn_title', 'alg_wc_cp_enable', 'alg_wc_cp_cl_widget_link', 'alg_wc_cp_fontawesome', 'alg_wc_cp_default_btn_single', 'alg_wc_cp_default_btn_single_pos', 'alg_wc_cp_default_btn_single_priority', 'alg_wc_cp_default_btn_loop', 'alg_wc_cp_default_btn_loop_priority', 'alg_wc_cp_version', 'alg_wc_cp_cl_cols', 'alg_wc_cp_page_id', 'alg_wc_cp_cl_field_image', 'alg_wc_cp_cl_field_title', 'alg_wc_cp_cl_modal_title', 'alg_wc_cp_cl_modal_subtitle', 'woocommerce_weight_unit', 'alg_wc_cp_cl_empty_text');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

