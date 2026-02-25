#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_tax_display_%'"
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete '_wcml_settings'

# Delete Transients
wp transient delete 'cuw_review_notice_revenue'
wp transient delete 'cuw_recommendations_list'
wp transient delete 'cuw_addons_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuw_created_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuw_created_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuw_created_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuw_created_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuw_used_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuw_used_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuw_used_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuw_used_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuw_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuw_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuw_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuw_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_cuw_noc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_cuw_noc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_cuw_noc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_cuw_noc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuw_created_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuw_created_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuw_created_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuw_created_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cuw_created_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cuw_created_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cuw_created_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cuw_created_for'"
