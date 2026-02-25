#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation-date'"
wp option delete 'spam-destroyer-stats'
wp option delete 'spam-destroyer-version'
wp option delete 'spam-destroyer-gd-notice-removed'
wp option delete 'spam-destroyer-key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'issues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'issues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'issues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'issues'"
