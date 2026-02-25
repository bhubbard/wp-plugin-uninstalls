#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_feature_woocommerce_brands_enabled'
wp option delete 'woocommerce_enable_brands'
wp option delete 'kgmwcbloat_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kgmwc_migration_notice_dismissed_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kgmwc_migration_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kgmwc_migration_notice_dismissed'"
