#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgmza-first-run'
wp option delete 'wpgmza_pro_db_version'
wp option delete 'wpgmza-engine-switch-toolbar-dismissed'
wp option delete 'wpgmza_db_version'
wp option delete 'WPGMZA_OTHER_SETTINGS'
wp option delete 'wpgmza_google_maps_api_key'
wp option delete 'wpgmza_xml_location'
wp option delete 'wpgmza_xml_url'
wp option delete 'wpgmza_temp_api'
wp option delete 'wpgmza-installer-initial-procedure'
wp option delete 'wpgmza-installer-paused'
wp option delete 'wpgmza-installer-retrigger-event'
wp option delete 'wpgmza-review-nag-closed'
wp option delete 'wpgmza_welcome_screen_done'
wp option delete 'wpgmza_global_settings'
wp option delete 'wpgmza_last_rest_api_blocked'
wp option delete 'WPGMZA_SETTINGS'
wp option delete 'wpgmza-tour-ftu-complete'
wp option delete 'wpgmza_permission'
wp option delete 'wpgmza_review_nag'
wp option delete 'wpgmza_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgmza_hide_chat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgmza_hide_chat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgmza_hide_chat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgmza_hide_chat'"
