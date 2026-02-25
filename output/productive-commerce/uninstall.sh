#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'productive_global_section_following_options'
wp option delete 'productive_global_section_grid_options'
wp option delete 'productive_global_section_misc_options'
wp option delete 'productive_global_section_popup_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'productive_global_section_sharing_options'
wp option delete 'productive_global_section_slider_options'
wp option delete 'productive_commerce_section_integration_options'
wp option delete 'productive_commerce_section_compare_options'
wp option delete 'productive_commerce_section_minicart_options'
wp option delete 'productive_commerce_section_wishlist_options'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete '_transient_productive_commerce'
wp option delete '_transient_timeout_productive_commerce'
wp option delete 'productive_commerce_section_quickview_options'
wp option delete 'productive_commerce_section_miniwishlist_options'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_tax_display_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_5'"
