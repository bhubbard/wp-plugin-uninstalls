#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pos-parent'
wp option delete 'pos-optimization-rules'
wp option delete 'pos-optimized-rules'
wp option delete 'pos-sign'
wp option delete 'eazywp_connection'
wp option delete 'eazywp_connecting_info'
wp option delete 'pos_locked_plugins_data'
wp option delete 'pos_locked_plugins_list'
wp option delete 'pos_blocked_plugins_data'
wp option delete 'pos_blocked_plugins_list'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_permalinks'
wp option delete 'pos-x16'
wp option delete 'pos_login_notice_dismissed'
wp option delete 'pos_plugin_frozen'
wp option delete 'pos_plugin_frozen_by'
wp option delete 'pos_activation_redirect'
wp option delete 'pos_plugin_image'
wp option delete 'pos_history_x32'
wp option delete 'POS_LOCAL_HISTORY'
wp option delete 'pos_vul_count'
wp option delete 'pos_439001'
wp option delete 'pos_plugin_data'

# Delete Transients
wp transient delete 'x32s'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pos_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pos_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pos_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pos_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pos_promotion_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pos_promotion_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pos_promotion_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pos_promotion_notice_dismissed'"
