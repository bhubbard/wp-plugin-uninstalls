#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byrst_woocommerce_plugin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_android'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byrst_woocommerce_plugin_file_android'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_android'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_android'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_ios'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byrst_woocommerce_plugin_file_ios'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_ios'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_ios'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byrst_woocommerce_plugin_file_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byrst_woocommerce_plugin_file_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byrst_woocommerce_plugin_file_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
