#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'default_product_cat'
wp option delete 'spptb_global_settings'
wp option delete 'spptb_db_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_tracking_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_skip'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_previously_skip'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_table_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_table_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_table_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_table_per_page'"
