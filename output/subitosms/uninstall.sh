#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subitosms_options_array'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subitosms_mobnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subitosms_mobnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subitosms_mobnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subitosms_mobnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subitosms_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subitosms_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subitosms_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subitosms_sent'"
