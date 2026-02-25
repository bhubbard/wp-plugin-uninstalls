#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keyring-%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syndication_urls'"
