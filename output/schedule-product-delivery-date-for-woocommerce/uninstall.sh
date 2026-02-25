#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thsdf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thsdf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thsdf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thsdf_deactivation_snooze'"
