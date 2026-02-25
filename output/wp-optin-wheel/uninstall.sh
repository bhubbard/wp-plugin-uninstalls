#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wof-lite-dev-version'
wp option delete 'wof_log_name'
wp option delete 'mb-wof-lite-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
