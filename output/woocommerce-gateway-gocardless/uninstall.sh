#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gocardless_settings'
wp option delete 'wc_gocardless_access_token_unauthorized'
wp option delete 'wc_gocardless_default_webhook_secret'
wp option delete 'woocommerce_gocardless_default_webhook_secret'
wp option delete 'wc_gocardless_version'
wp option delete 'woocommerce_gocardless_version'
wp option delete 'woocommerce_gocardless_settings_deprecated'

# Delete Transients
wp transient delete 'wc_gocardless_available_scheme_identifiers'
wp transient delete 'wc_gocardless_connection_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gocardless_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gocardless_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gocardless_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gocardless_customer_id'"
