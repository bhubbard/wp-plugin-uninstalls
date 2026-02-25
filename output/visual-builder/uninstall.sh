#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'visualbuilder_vb_admin_footer'
wp option delete 'visualbuilder_vb_admin_blog'
wp option delete 'visualbuilder_vb_admin_product'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'visualbuilder_%'"
wp option delete 'elementor_cpt_support'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vb_template_%'"
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'visualbuilder_secret_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'developer_theme_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'developer_theme_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'developer_theme_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'developer_theme_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vb_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vb_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vb_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vb_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vb_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vb_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vb_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vb_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visualbuilder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visualbuilder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visualbuilder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visualbuilder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sao_show_page_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sao_show_page_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sao_show_page_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sao_show_page_builder'"
