#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'client_showcase_list'
wp option delete 'client_showcase_list_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite_rules'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_showcase_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_showcase_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_showcase_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_showcase_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_url'"
