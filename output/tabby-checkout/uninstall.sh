#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tabby_checkout_%'"
wp option delete 'tabby_checkout_order_timeout'
wp option delete 'tabby_share_feed'
wp option delete 'tabby_countries'
wp option delete 'tabby_checkout_disable_for_sku'
wp option delete 'woocommerce_manage_stock'
wp option delete 'tabby_checkout_failed_action'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'tabby_promo'
wp option delete 'tabby_promo_cart'
wp option delete 'tabby_promo_inherit_bg'
wp option delete 'tabby_checkout_public_key'
wp option delete 'tabby_checkout_promo_price'
wp option delete 'tabby_checkout_promo_min_total'
wp option delete 'tabby_plugin_version'
wp option delete 'woocommerce_tabby_installments_settings'
wp option delete 'tabby_checkout_mode'

# Clear Cron Jobs
wp cron event delete 'woocommerce_tabby_cancel_unpaid_orders'

