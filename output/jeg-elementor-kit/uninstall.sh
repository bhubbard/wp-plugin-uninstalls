#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_active_kit'
wp option delete 'jkit_user_data'
wp option delete 'jkit_notfound_template'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'jkit_elements_enable'
wp option delete 'jkit-liked-layout'
wp option delete 'jkit-liked-section'
wp option delete 'jkit-subscribed'
wp option delete 'jkit-subscribed-email'
wp option delete 'active_sitewide_plugins'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'jeg'
wp option delete 'jeg-dynamic-css'

# Delete Transients
wp transient delete 'jkit_banner_closed'
wp transient delete 'update_plugins'
wp transient delete 'jkit_banner_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jkit-condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jkit-condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jkit-condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jkit-condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_item_jkit_mega_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_item_jkit_mega_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_item_jkit_mega_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_item_jkit_mega_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
