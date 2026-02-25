#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preorder_timer_hpos_notice_shown'
wp option delete 'preorder_timer_product_ids'
wp option delete 'preorder_timer_style'
wp option delete 'preorder_timer_text'
wp option delete 'preorder_timer_expiry_action'
wp option delete 'preorder_timer_expired_message'
wp option delete 'preorder_timer_enabled'
wp option delete 'preorder_timer_settings'
wp option delete 'preorder_timer_version'

# Delete Transients
wp transient delete 'woocommerce_hpos_incompatible_plugins'
wp transient delete 'woocommerce_features_cache'
wp transient delete 'preorder_timer_hpos_compatibility_checked'
wp transient delete 'preorder_timer_cache'

# Clear Cron Jobs
wp cron event delete 'preorder_timer_check_expiry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preorder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preorder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preorder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preorder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preorder_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preorder_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preorder_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preorder_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preorder_available_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preorder_available_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preorder_available_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preorder_available_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preorder_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preorder_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preorder_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preorder_button_text'"
