#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gentlesourceShortUrlApiUrl'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gentlesourceShortUrl%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GentleSourceShortURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GentleSourceShortURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GentleSourceShortURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GentleSourceShortURL'"
