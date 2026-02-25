#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmen_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmen_mute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmen_mute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmen_mute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmen_mute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmen_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmen_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmen_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmen_notified'"
