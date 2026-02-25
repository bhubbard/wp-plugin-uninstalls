#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erpc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcut'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcut'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcut'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcut'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erpc_cid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erpc_cid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erpc_cid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erpc_cid'"
