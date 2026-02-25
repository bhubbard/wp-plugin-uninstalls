#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmae_settings'

# Delete Transients
wp transient delete 'brozzme_plugins_api_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brozzme_plugins_api_version_%' OR option_name LIKE '_site_transient_brozzme_plugins_api_version_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmae_on_demand_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmae_on_demand_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmae_on_demand_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmae_on_demand_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmae_sent_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmae_sent_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmae_sent_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmae_sent_before'"
