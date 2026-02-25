#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcad_excluded_categories'
wp option delete 'wcad_discount_rules'
wp option delete 'wc_discount_rules'
wp option delete 'bdo_discount_rules'
wp option delete 'wc_excluded_categories'
wp option delete 'bdo_excluded_categories'

# Clear Cron Jobs
wp cron event delete 'wcad_daily_discount_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_creation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_creation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_creation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_creation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcad_applied_discount_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcad_applied_discount_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcad_applied_discount_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcad_applied_discount_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_applied_discount_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_applied_discount_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_applied_discount_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_applied_discount_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bdo_applied_discount_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bdo_applied_discount_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bdo_applied_discount_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bdo_applied_discount_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcad_exclude_from_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcad_exclude_from_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcad_exclude_from_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcad_exclude_from_discounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
