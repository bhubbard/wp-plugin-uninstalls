#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_wcfm_paypal_marketplace_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
