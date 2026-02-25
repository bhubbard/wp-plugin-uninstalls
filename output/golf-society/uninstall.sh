#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_reset_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_reset_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_reset_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_reset_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name_on_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name_on_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name_on_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name_on_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphone'"
