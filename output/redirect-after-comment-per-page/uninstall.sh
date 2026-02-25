#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'racpp_redirect_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'racpp_meta_box_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'racpp_meta_box_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'racpp_meta_box_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'racpp_meta_box_url'"
