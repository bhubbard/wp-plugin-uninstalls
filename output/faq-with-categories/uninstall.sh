#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ruigehond_plugin_error'
wp option delete 'ruigehond010_admin_multi_message'
wp option delete 'ruigehond010_flag_flush_rewrite_rules'
wp option delete 'ruigehond010'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ruigehond010_exclusive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ruigehond010_exclusive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ruigehond010_exclusive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ruigehond010_exclusive'"
