#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtai_api_key'
wp option delete 'wtai_default_language'
wp option delete 'wtai_post_status'
wp option delete 'wtai_post_keep_image'
wp option delete 'wtai_post_slug_method'
wp option delete 'wtai_post_tags_method'
wp option delete 'wtai_post_custom_tags'
wp option delete 'wtai_post_author'
wp option delete 'wtai_page_status'
wp option delete 'wtai_page_keep_image'
wp option delete 'wtai_page_slug_method'
wp option delete 'wtai_page_author'
wp option delete 'wtai_prod_status'
wp option delete 'wtai_prod_author'
wp option delete 'wtai_prod_slug_method'
wp option delete 'wtai_prod_keep_image'
wp option delete 'wtai_prod_sku_method'
wp option delete 'wtai_prod_price_method'
wp option delete 'wtai_prod_stock_method'
wp option delete 'wtai_prod_attr_method'
wp option delete 'wtai_prod_cat_method'
wp option delete 'wtai_prod_tags_method'
wp option delete 'wtai_prod_custom_tags'
wp option delete 'wtai_prod_gallery_method'
wp option delete 'wtai_prod_brand_method'
wp option delete 'wtai_prod_specific_brand'
wp option delete 'wtai_prod_adv_dims'
wp option delete 'wtai_prod_adv_tax'
wp option delete 'wtai_prod_adv_ship'
wp option delete 'wtai_prod_adv_files'
wp option delete 'wtai_usage_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtai_source_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtai_source_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtai_source_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtai_source_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtai_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtai_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtai_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtai_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
