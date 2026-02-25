#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'item_details_page'
wp option delete 'shopire_media_id'
wp option delete 'widget_archives'
wp option delete 'widget_search'
wp option delete 'sidebars_widgets'
wp option delete 'fable_extra_woocompare_compare_text'
wp option delete 'fable_extra_woowishlist_wishlist_text'
wp option delete 'fable_extra_woocompare_show_in_catalog'
wp option delete 'fable_extra_woocompare_show_in_single'
wp option delete 'fable_extra_woocompare_enable'
wp option delete 'fable_extra_woocompare_page'
wp option delete 'fable_extra_woocompare_empty_text'
wp option delete 'fable_extra_woocompare_page_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page'"
wp option delete 'fable_extra_woowishlist_show_in_catalog'
wp option delete 'fable_extra_woowishlist_show_in_single'
wp option delete 'fable_extra_woowishlist_page_btn_text'
wp option delete 'fable_extra_woowishlist_enable'
wp option delete 'fable_extra_woowishlist_page'
wp option delete 'fable_extra_woowishlist_empty_text'
wp option delete 'fable_extra_woowishlist_page_template'
wp option delete 'fable_extra_woowishlist_cols'
wp option delete 'custom_related_products_fable_extra_relatedp_by'
wp option delete 'custom_related_products_srp_title'
wp option delete 'custom_related_products_use_primary_id_wpml'
wp option delete 'custom_related_products_srp_number'
wp option delete 'custom_related_products_srp_order_by'
wp option delete 'custom_related_products_srp_order'
wp option delete 'custom_related_products_exclude_os'

# Delete Transients
wp transient delete 'product-categories-hierarchy'
wp transient delete 'enovathemes-product-categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fable_extra_woo_wishlist_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fable_extra_woo_wishlist_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fable_extra_woo_wishlist_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fable_extra_woo_wishlist_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fable_extra_relatedp_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fable_extra_relatedp_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fable_extra_relatedp_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fable_extra_relatedp_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fable_extra_relatedp_product_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fable_extra_relatedp_product_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fable_extra_relatedp_product_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fable_extra_relatedp_product_cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fable_extra_relatedp_product_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fable_extra_relatedp_product_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fable_extra_relatedp_product_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fable_extra_relatedp_product_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fable_extra_relatedp_product_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fable_extra_relatedp_product_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fable_extra_relatedp_product_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fable_extra_relatedp_product_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srp_excluded_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srp_excluded_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srp_excluded_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srp_excluded_cats'"
