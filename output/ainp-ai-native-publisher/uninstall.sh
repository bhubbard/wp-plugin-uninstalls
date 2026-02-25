#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ainp_settings'

# Delete Transients
wp transient delete 'ainp_fallback_cron_check'
wp transient delete 'ainp_manual_context'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ainp_hide_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ainp_hide_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ainp_hide_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ainp_hide_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainp_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainp_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainp_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainp_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainp_original_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainp_original_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainp_original_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainp_original_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainp_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainp_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainp_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainp_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainp_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainp_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainp_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainp_source_name'"
