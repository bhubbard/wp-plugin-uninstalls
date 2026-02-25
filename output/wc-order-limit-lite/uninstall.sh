#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_order_limit_do_activation_redirect'
wp option delete 'wcol_options'
wp option delete 'wcol_rule_type_error'
wp option delete 'wcol_rule_select_items'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xswcol_order_time_update_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xswcol_recent_order_time_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xswcol_order_time_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcol-post-rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcol-post-rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcol-post-rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcol-post-rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcol-rule-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcol-rule-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcol-rule-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcol-rule-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcol_rule_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcol_rule_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcol_rule_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcol_rule_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcol_min_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcol_min_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcol_min_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcol_min_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcol_max_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcol_max_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcol_max_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcol_max_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcol_order_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcol_order_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcol_order_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcol_order_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xswcol_order_time_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xswcol_order_time_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xswcol_order_time_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xswcol_order_time_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xswcol_recent_order_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xswcol_recent_order_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xswcol_recent_order_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xswcol_recent_order_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xswcol_order_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xswcol_order_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xswcol_order_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xswcol_order_time'"
