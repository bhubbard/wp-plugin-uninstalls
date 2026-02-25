#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_google_analytics_settings'
wp option delete 'auto_update_plugins'
wp option delete 'gla_ads_conversion_action'
wp option delete 'gla_ads_id'
wp option delete 'woocommerce_enable_myaccount_registration'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_googlesitekit_%' OR option_name LIKE '_site_transient_googlesitekit_%'"
wp transient delete 'update_plugins'
wp transient delete 'googlesitekit_setup_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
