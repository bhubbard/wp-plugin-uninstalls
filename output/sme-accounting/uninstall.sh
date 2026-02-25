#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smevai_settings'
wp option delete '_smevai_woocommerce_webhook_added'

# Delete Transients
wp transient delete 'smevai_activation_redirect'
wp transient delete 'smevai_woocommerce_rest_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'purchase_price'"
