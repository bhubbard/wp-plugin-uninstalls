#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gratify_pay_api_error'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'gratify_pay-admin-activation-notice'
wp transient delete 'gratify_pay-admin-connection-failed-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gratify_pay_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gratify_pay_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gratify_pay_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gratify_pay_token'"
