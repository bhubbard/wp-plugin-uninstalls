#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ondokusan_do_activation_redirect'
wp option delete 'ondokusan_settings'
wp option delete 'ondokusan_last_result'
wp option delete 'ondokusan_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ondoku_mp3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ondoku_mp3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ondoku_mp3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ondoku_mp3_url'"
