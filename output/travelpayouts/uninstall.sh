#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TravelpayoutsSettingsFrameworkPlugin_ACTIVATED_NOTICES'
wp option delete 'active_sitewide_plugins'
wp option delete 'TravelpayoutsSettingsFrameworkPlugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'auto_update_Redux_Travelpayouts_google_fonts'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
