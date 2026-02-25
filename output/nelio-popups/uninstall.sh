#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nelio_popups_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_popups_active_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_popups_active_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_popups_active_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_popups_active_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_popups_is_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_popups_is_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_popups_is_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_popups_is_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_popups_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_popups_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_popups_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_popups_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_popups_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_popups_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_popups_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_popups_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_popups_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_popups_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_popups_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_popups_conditions'"
