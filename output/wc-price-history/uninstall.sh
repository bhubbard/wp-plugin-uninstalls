#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_price_history_db_version'
wp option delete 'wc_price_history_settings'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_price_history_migration_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_price_history_migration_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_price_history_migration_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_price_history_migration_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_price_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_price_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_price_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_price_history'"
