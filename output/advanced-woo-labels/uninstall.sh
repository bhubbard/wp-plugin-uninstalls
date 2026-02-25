#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awl_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'awl_plugin_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awl_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awl_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awl_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awl_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awl_label_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awl_label_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awl_label_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awl_label_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awl_disable_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awl_disable_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awl_disable_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awl_disable_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
