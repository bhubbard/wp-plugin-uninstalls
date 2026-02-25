#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wishlist_settings'
wp option delete 'pickplugins_wl_default_wishlist_id'
wp option delete 'pickplugins_wl_wishlist_page'
wp option delete 'pickplugins_wl_enable_wc_shop'
wp option delete 'pickplugins_wl_wc_shop_on'
wp option delete 'pickplugins_wl_enable_wc_product'
wp option delete 'pickplugins_wl_wc_product_under'
wp option delete 'pickplugins_wl_breadcrumb_enable'
wp option delete 'pickplugins_wl_breadcrumb_home_text'
wp option delete 'pickplugins_wl_breadcrumb_text_color'
wp option delete 'pickplugins_wl_list_per_page'
wp option delete 'pickplugins_wl_list_items_per_page'
wp option delete 'pickplugins_wl_button_font_size'
wp option delete 'pickplugins_wl_button_color_normal'
wp option delete 'pickplugins_wl_button_color_active'
wp option delete 'wishlist_heart_icon_html'
wp option delete 'wishlist_heart_loading_icon_html'
wp option delete 'pickplugins_wl_views_display'
wp option delete 'pickplugins_wl_vote_enable'
wp option delete 'pickplugins_wl_share_enable'
wp option delete 'pickplugins_wl_social_platforms'
wp option delete 'wishlist_plugin_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishlist_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishlist_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishlist_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishlist_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishlist_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishlist_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishlist_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishlist_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickplugins_wl_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickplugins_wl_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickplugins_wl_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickplugins_wl_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickplugins_wl_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickplugins_wl_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickplugins_wl_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickplugins_wl_views'"
