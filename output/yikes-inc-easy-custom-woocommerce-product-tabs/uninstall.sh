#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yikes_cpt_use_the_content'
wp option delete 'yikes_woo_reusable_products_tabs_applied'
wp option delete 'yikes_woo_reusable_products_tabs'
wp option delete 'yikes_woocommerce_custom_product_tabs_db_version'
wp option delete 'custom_product_tabs_onesixone_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yikes_woo_products_tabs'"
