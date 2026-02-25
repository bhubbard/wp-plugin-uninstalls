#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automatic-product-categories-for-woocommerce'
wp option delete 'automatic-product-categories-for-woocommerce-backup'
wp option delete 'automatic-product-categories-for-woocommerce-backup-date'
wp option delete 'default_product_cat'

# Clear Cron Jobs
wp cron event delete 'penthouse_apc_daily_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'berrypress_page_automatic_product_categories_for_woocommerce_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'berrypress_page_automatic_product_categories_for_woocommerce_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'berrypress_page_automatic_product_categories_for_woocommerce_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'berrypress_page_automatic_product_categories_for_woocommerce_per_page'"
