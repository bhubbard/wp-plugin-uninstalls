#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphnp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start_dtp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start_dtp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start_dtp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start_dtp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_dtp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_dtp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_dtp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_dtp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtp_zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtp_zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtp_zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtp_zone'"
