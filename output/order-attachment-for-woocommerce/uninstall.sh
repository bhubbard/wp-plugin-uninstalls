#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phoe_attach_value'
wp option delete 'recently_activated'
wp option delete 'phoe_disc_value'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_custom_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_custom_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_custom_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_custom_val'"
