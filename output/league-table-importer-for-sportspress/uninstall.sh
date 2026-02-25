#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
