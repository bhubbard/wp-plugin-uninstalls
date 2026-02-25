#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'array_key'
wp option delete 'new_option_name'
wp option delete 'some_other_option'
wp option delete 'option_etc'
wp option delete 'feed_settings'
wp option delete 'feed_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_key'"
