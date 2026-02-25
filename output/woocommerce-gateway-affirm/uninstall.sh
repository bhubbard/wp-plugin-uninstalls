#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affirm_us_keys_status'
wp option delete 'woocommerce_affirm_settings'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'oauth_init'

# Clear Cron Jobs
wp cron event delete 'affirm_api_key_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_gateway_affirm_charge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_gateway_affirm_charge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_gateway_affirm_charge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_gateway_affirm_charge_id'"
