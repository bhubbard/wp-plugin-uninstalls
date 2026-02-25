#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zdze_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zdze_token_%' OR option_name LIKE '_site_transient_zdze_token_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zdze_meeting_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zdze_meeting_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zdze_meeting_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zdze_meeting_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zdze_passcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zdze_passcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zdze_passcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zdze_passcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zdze_auto_join'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zdze_auto_join'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zdze_auto_join'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zdze_auto_join'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zdze_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zdze_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zdze_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zdze_height'"
