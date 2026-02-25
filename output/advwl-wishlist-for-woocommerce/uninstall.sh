#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advwl_btn_position'
wp option delete 'advwl_after_add_to_wishlist_behaviour_add'
wp option delete 'advwl_btn_text'
wp option delete 'advwl_btn_view_text'
wp option delete 'advwl_btn_remove_text'
wp option delete 'advwl_btn_already_in'
wp option delete 'advwl_pro_added_text'
wp option delete 'advwl_btn_archive'
wp option delete 'advwl_btn_archive_position'
wp option delete 'advwl_btn_style'
wp option delete 'advwl_btn_icon'
wp option delete 'advwl_wishlist_page'
wp option delete 'advwl_wishlist_name'
wp option delete 'advwl_remove_from_wishlist'
wp option delete 'advwl_redirect_to_cart'
wp option delete 'advwl_success_notice'
wp option delete 'advwl_show_prod_image'
wp option delete 'advwl_show_prod_title'
wp option delete 'advwl_show_prod_price'
wp option delete 'advwl_show_prod_stock'
wp option delete 'advwl_show_date_added'
wp option delete 'advwl_cart_style'
wp option delete 'advwl_cart_text'
wp option delete 'advwl_show_remove_icon'
wp option delete 'woocommerce_currency'
wp option delete 'advwl_plugin_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
