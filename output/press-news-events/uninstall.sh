#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'pne_settings_press_releases'
wp option delete 'pne_press_release_boilderplate'
wp option delete 'pne_admin_notices'
wp option delete 'pne_settings_auto_archive'
wp option delete 'pne_settings_inject_meta'

# Delete Transients
wp transient delete 'pne_flush_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_starts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_starts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_starts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_starts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date'"
