#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontend_product_additional_fields'
wp option delete 'frontend_product_status'
wp option delete 'frontend_product_category'
wp option delete 'frontend_product_user_role'
wp option delete 'frontend_product_save_update_email'
wp option delete 'frontend_product_save_update_email_admin'
wp option delete 'bytes_permalink_update'
wp option delete 'woocommerce_install_and_activate_admin_notices'
wp option delete 'deferred_admin_notices'
wp option delete 'bytes_plugin_template'
wp option delete 'bytes_plugin_page_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
