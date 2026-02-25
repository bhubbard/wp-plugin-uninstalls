#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp-private-cpts'
wp option delete 'pp-private-components'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-private'"
