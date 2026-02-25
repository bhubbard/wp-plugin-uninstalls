#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ruigehond006'
wp option delete 'ruigehond006_upgraded_1.2.4'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ruigehond006_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ruigehond006_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ruigehond006_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ruigehond006_show'"
