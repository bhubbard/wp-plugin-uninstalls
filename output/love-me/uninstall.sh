#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'love_me_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'love_me_like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'love_me_like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'love_me_like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'love_me_like'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'love_me_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'love_me_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'love_me_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'love_me_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'love_me_ips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'love_me_ips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'love_me_ips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'love_me_ips'"
