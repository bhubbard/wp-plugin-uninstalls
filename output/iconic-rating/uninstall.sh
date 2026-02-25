#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iconicr_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iconicr_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iconicr_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iconicr_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iconicr_avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iconicr_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iconicr_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iconicr_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iconicr_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iconicr_star_v'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iconicr_star_v'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iconicr_star_v'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iconicr_star_v'"
