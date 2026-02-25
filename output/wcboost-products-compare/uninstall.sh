#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcboost_products_compare_added_behavior'
wp option delete 'wcboost_products_compare_tracking'
wp option delete 'wcboost_products_compare_bar'
wp option delete 'wcboost_products_compare_exists_item_button_behaviour'
wp option delete 'wcboost_products_compare_ajax_bypass_cache'
wp option delete 'wcboost_products_compare_bar_button_behavior'
wp option delete 'wcboost_products_compare_bar_hide_if_single'
wp option delete 'woocommerce_private_link'
wp option delete 'woocommerce_share_key'
wp option delete 'wcboost_products_compare_button_icon'
wp option delete 'wcboost_products_compare_button_text'
wp option delete 'wcboost_products_compare_version'
wp option delete 'wcboost_products_compare_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcboost_products_compare_load_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcboost_products_compare_load_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcboost_products_compare_load_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcboost_products_compare_load_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcboost_products_compare_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcboost_products_compare_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcboost_products_compare_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcboost_products_compare_%'"
