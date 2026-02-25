#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guaven_dxtag_tagslug'
wp option delete 'guaven_dxtag_flush'
wp option delete 'guaven_dxtag_activated'
wp option delete 'guaven_dxtag_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guaven_dxtag_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guaven_dxtag_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guaven_dxtag_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guaven_dxtag_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cron_update_this_dxtag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cron_update_this_dxtag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cron_update_this_dxtag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cron_update_this_dxtag'"
