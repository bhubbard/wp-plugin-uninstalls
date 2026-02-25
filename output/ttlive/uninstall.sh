#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TTLive_refreshHours'
wp option delete 'TTLive_baseurl'
wp option delete 'TTLive_divisionID'
wp option delete 'TTLive_tableclassname_TeamSpielplan'
wp option delete 'TTLive_tableclassname_Tabelle'
wp option delete 'TTLive_tableclassname_Hallenplan'
wp option delete 'TTLive_tableclassname_Rangliste'
wp option delete 'TTLive_tableclassname_14Tage'
wp option delete 'TTLive_tableclassname_Mannschaft'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mannschaft_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mannschaft_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mannschaft_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mannschaft_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'staffel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'staffel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'staffel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'staffel_id'"
