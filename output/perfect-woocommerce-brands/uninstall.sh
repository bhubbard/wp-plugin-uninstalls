#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'wc_pwb_admin_tab_brands_in_loop'
wp option delete 'wc_pwb_admin_tab_brands_in_loop_separator'
wp option delete 'wc_pwb_admin_tab_slug'
wp option delete 'old_wc_pwb_admin_tab_slug'
wp option delete 'wc_pwb_admin_tab_brand_logo_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%'"
wp option delete 'wc_pwb_admin_tab_brand_single_position'
wp option delete 'wc_pwb_notice_plugin_review'
wp option delete 'wc_pwb_admin_tab_brand_desc'
wp option delete 'wc_pwb_admin_tab_brand_single_product_tab'
wp option delete 'wc_pwb_admin_tab_brands_in_single'
wp option delete 'wc_pwb_admin_tab_brand_single_label'
wp option delete 'wc_pwb_admin_tab_long_brand_desc'
wp option delete 'wc_pwb_admin_tab_brand_banner'
wp option delete 'wc_pwb_admin_tab_brands_page_id'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'pwb_activate_on'
wp option delete 'wc_pwb_admin_tab_section_title'
wp option delete 'wc_pwb_admin_tab_section_end'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pwb_az_listing_cache_%' OR option_name LIKE '_site_transient_pwb_az_listing_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_banner_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_banner_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_banner_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_banner_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_long_brand_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_long_brand_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_long_brand_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_long_brand_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pwb_coupon_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pwb_coupon_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pwb_coupon_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pwb_coupon_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pwb_coupon_exclude_brands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pwb_coupon_exclude_brands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pwb_coupon_exclude_brands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pwb_coupon_exclude_brands'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_featured_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_featured_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_featured_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_featured_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_banner_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_banner_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_banner_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_banner_description'"
