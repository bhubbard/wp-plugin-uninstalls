#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iute_notice'
wp option delete 'woocommerce_iutepay_settings'
wp option delete 'enabled'
wp option delete 'description'
wp option delete 'showPromoOnCategoryPage'
wp option delete 'enableWebhook'
wp option delete 'testmode'
wp option delete 'test_iute_api_key'
wp option delete 'test_iute_admin_key'
wp option delete 'iute_api_key'
wp option delete 'iute_admin_key'
wp option delete 'country'
wp option delete 'emailNotificationAboutNewLoanApplication'
wp option delete 'emailNotificationAboutLoanApplicationStatusChange'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
