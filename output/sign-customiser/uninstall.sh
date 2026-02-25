#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'spcwp_debug'
wp option delete 'spcwp_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spcwp_ajax_cart_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spcwp_ajax_cart_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spcwp_ajax_cart_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spcwp_ajax_cart_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spcwp_migration_banner_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spcwp_migration_banner_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spcwp_migration_banner_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spcwp_migration_banner_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spcwp_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spcwp_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spcwp_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spcwp_processed'"
