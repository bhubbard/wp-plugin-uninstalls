#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbte_sc_hidden_promotion_banners'
wp option delete 'wt_p_iew_product_cta_banner_default_page_dismissed'
wp option delete 'wt_ier_pro_banner_dismissed'
wp option delete 'wt_iew_admin_modules'
wp option delete 'wbfte_promotion_banner_version'
wp option delete 'wt_hide_invoice_cta_banner'
wp option delete 'wt_hide_smart_coupon_cta_banner'
wp option delete 'wt_hide_product_ie_cta_banner'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'xa_rev_im_ex_last_import_csv_start_col'
wp option delete 'wf_prod_review_alter_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_date'"
wp option delete 'wt_iew_advanced_settings'
wp option delete 'wt_p_iew_is_active'
wp option delete 'wt_p_iew_basic_json_migration_complete'

# Delete Transients
wp transient delete '_product_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_delete_existing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_delete_existing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_delete_existing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_delete_existing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
