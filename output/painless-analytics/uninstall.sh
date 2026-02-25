#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activated_painlessanalytics'
wp option delete 'painlessanalytics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activated_painlessanalytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activated_painlessanalytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activated_painlessanalytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activated_painlessanalytics'"
