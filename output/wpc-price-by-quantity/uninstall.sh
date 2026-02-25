#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpq_settings'
wp option delete 'wpcpq_prices'
wp option delete 'wpcpq_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcpq_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpq_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpq_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpq_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpq_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpq_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpq_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpq_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpq_prices'"
