#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ncpc_config_page'
wp option delete 'woocommerce_currency_pos'
wp option delete 'ncpc_global_settings_others_data'
wp option delete 'ncpc_product_free'
wp option delete 'ncpc_free_license'
wp option delete 'ncpc_free_plugin_clicks'
wp option delete 'ncpc_installed'
wp option delete 'ncpc_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-ncpc-metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-ncpc-metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-ncpc-metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-ncpc-metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc-configs-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc-configs-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc-configs-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc-configs-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_free_review_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_free_review_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_free_review_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_free_review_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_free_review_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_free_review_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_free_review_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_free_review_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_free_plugins_promo_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_free_plugins_promo_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_free_plugins_promo_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_free_plugins_promo_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_free_promo_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_free_promo_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_free_promo_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_free_promo_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ncpc_pro_notice_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ncpc_pro_notice_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ncpc_pro_notice_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ncpc_pro_notice_later'"
