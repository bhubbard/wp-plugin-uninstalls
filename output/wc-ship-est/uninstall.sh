#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wse_pro_version'
wp option delete 'wse_db_version'
wp option delete 'wse_uninstall'
wp option delete 'wse_methods'
wp option delete 'wse_method_update'
wp option delete 'wse_desc'
wp option delete 'wse_append_desc'
wp option delete 'wse_mn_days'
wp option delete 'wse_mx_days'
wp option delete 'wse_bz_days'
wp option delete 'wse_mon'
wp option delete 'wse_tue'
wp option delete 'wse_wed'
wp option delete 'wse_thu'
wp option delete 'wse_fri'
wp option delete 'wse_sat'
wp option delete 'wse_sun'
wp option delete 'wse_hol'
wp option delete 'wse_del_fri'
wp option delete 'wse_del_sat'
wp option delete 'wse_del_sun'
wp option delete 'wse_del_hol'
wp option delete 'wse_ctf'
wp option delete 'wse_date'
wp option delete 'wse_prd_dsp'
wp option delete 'wse_prd_desc'
wp option delete 'wse_prds_dsp'
wp option delete 'wse_prdx_dsp'
wp option delete 'wse_prds'
wp option delete 'wse_prd_mn_days'
wp option delete 'wse_prd_mx_days'
wp option delete 'wse_prd_bk_days'
wp option delete 'wse_tags'
wp option delete 'wse_tag_mn_days'
wp option delete 'wse_tag_mx_days'
wp option delete 'wse_tag_bk_days'
wp option delete 'wse_dt_format'
wp option delete 'wse_def_bk_days'
wp option delete 'wse_def_bk_desc'
wp option delete 'wse_cart_ct'
wp option delete 'wse_blo_ct'
wp option delete 'wse_bli_ct'
wp option delete 'wse_vac_begin'
wp option delete 'wse_vac_end'
wp option delete 'wse_prds_vac'
wp option delete 'wse_prdx_vac'
wp option delete 'wse_prd_dsp_title'
wp option delete 'wse_conv_trk'
wp option delete 'wse_aw_id'
wp option delete 'wse_aw_label'
wp option delete 'wse_reviews'
wp option delete 'wse_merchant_id'
wp option delete 'wse_reviews_opt'
wp option delete 'wse_rvw_badge'
wp option delete 'wse_rvw_badge_loc'
wp option delete 'wse_holidays'
wp option delete 'wse_in_email'
wp option delete 'wse_in_email_desc'
wp option delete 'prd_dsp_title'
wp option delete 'wse_dismiss_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
