#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secondary_title_show_donation_notice'
wp option delete 'secondary_title_auto_show'
wp option delete 'secondary_title_title_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secondary_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secondary_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secondary_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secondary_title'"
