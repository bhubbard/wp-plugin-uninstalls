#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ConvertedIn_WooCommerce_loggedIn_in_platform'
wp option delete 'ConvertedIn_WooCommerce_api_token'
wp option delete 'ConvertedIn_WooCommerce_Pixel_Code'
wp option delete 'ConvertedIn_WooCommerce_admin_email'
wp option delete 'woocommerce_default_country'
wp option delete 'ConvertedIn_WooCommerce_initialSyncDone'
wp option delete 'ConvertedIn_WooCommerce_redirect_to_installation'
wp option delete 'ConvertedIn_WooCommerce_baseUrl'
wp option delete 'ConvertedIn_WooCommerce_users_last_sync'
wp option delete 'ConvertedIn_WooCommerce_orders_last_sync'
wp option delete 'ConvertedIn_WooCommerce_products_last_sync'
wp option delete 'ConvertedIn_WooCommerce_categories_last_sync'
wp option delete 'active_sitewide_plugins'
wp option delete 'ConvertedIn_WooCommerce_version'

