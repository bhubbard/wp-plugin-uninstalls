#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gpservice_version'
wp option delete 'woocommerce_greenpay-payment-service_settings'
wp option delete 'greenpay_dismissed_migration_token'
wp option delete 'greenpay_token_migration'
wp option delete 'greenpay_dismissed_gp_webhook_tokenization'
wp option delete 'greenpay_dismissed_gp_webhook'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'greenpay_dismissed_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'greenpay_token_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'greenpay_token_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'greenpay_token_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'greenpay_token_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'greenpay_webhook_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'greenpay_webhook_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'greenpay_webhook_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'greenpay_webhook_response'"
