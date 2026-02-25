#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugins' OR option_name LIKE '_site_transient_%_plugins'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
