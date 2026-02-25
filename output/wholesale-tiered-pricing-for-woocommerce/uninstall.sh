#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whtprole_pricing_save_general_settings'
wp option delete 'whtprole_global_product_settings'
wp option delete 'whtprole_pricing_global_rules'
wp option delete 'whtprole_global_product_setting'
wp option delete 'whtprole_role_pricing_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_role_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_role_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_role_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_role_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_pricing_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_pricing_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_pricing_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_pricing_table'"
