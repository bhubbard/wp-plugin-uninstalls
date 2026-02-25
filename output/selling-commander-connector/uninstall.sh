#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scconn_deleted_products_log'
wp option delete 'scconn_allowed_plugins'
wp option delete 'scconn_settings'
wp option delete 'default_product_cat'
wp option delete 'scconn_deleted_posts_log'
wp option delete 'PELM_SETTINGS'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scconn_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scconn_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scconn_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scconn_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scconn_api_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scconn_api_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scconn_api_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scconn_api_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_level'"
