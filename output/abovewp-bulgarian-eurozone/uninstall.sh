#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abovewp_bge_enabled'
wp option delete 'abovewp_bge_show_single_product'
wp option delete 'abovewp_bge_show_variable_product'
wp option delete 'abovewp_bge_show_cart_item'
wp option delete 'abovewp_bge_show_cart_subtotal'
wp option delete 'abovewp_bge_show_cart_total'
wp option delete 'abovewp_bge_show_order_totals'
wp option delete 'abovewp_bge_show_orders_table'
wp option delete 'abovewp_bge_show_api_prices'
wp option delete 'abovewp_bge_show_shipping_labels'
wp option delete 'abovewp_bge_show_tax_labels'
wp option delete 'abovewp_bge_show_mini_cart'
wp option delete 'abovewp_bge_show_thank_you_page'
wp option delete 'abovewp_bge_eur_position'
wp option delete 'abovewp_bge_eur_format'
wp option delete 'abovewp_bge_bgn_rounding'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'abovewp_bge_show_%'"
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'abovewp_bge_migration_in_progress'
wp option delete 'abovewp_bge_migration_offset'
wp option delete 'abovewp_bge_migration_total'
wp option delete 'abovewp_bge_migration_last_error'
wp option delete 'woocommerce_currency'
wp option delete 'abovewp_bge_eur_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abovewp_migration_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abovewp_migration_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abovewp_migration_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abovewp_migration_notice_dismissed'"
