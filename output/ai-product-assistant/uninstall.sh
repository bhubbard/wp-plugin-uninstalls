#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'aipa_install_time'
wp option delete 'aipa_settings'
wp option delete 'aipa_debug_settings'
wp option delete 'aipa_usage_stats'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'aipa_search_count'
wp option delete 'aipa_analysis_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aipa_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aipa_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aipa_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aipa_upgrade_notice_dismissed'"
