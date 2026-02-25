#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'column_number'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url_portfolio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url_portfolio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url_portfolio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url_portfolio'"
