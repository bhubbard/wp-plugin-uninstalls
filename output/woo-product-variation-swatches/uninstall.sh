#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_woobundle_notice_%'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'rtwpvs_pro_activate'
wp option delete 'rtwpvs_backup_attribute_types'
wp option delete 'rtwpvs_pro_version'
wp option delete 'woobundle_black_friday_offer_2024'
wp option delete 'rtwpvs_offer_july_2022'
wp option delete 'rtvs_plugin_activation_time'
wp option delete 'rtvs_spare_me'
wp option delete 'rtvs_remind_me'
wp option delete 'rtvs_rated'
wp option delete 'rtwpvs'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'rtwpvs_pro_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtwpvs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtwpvs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtwpvs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtwpvs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvs_attribute_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvs_attribute_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvs_attribute_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvs_attribute_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
