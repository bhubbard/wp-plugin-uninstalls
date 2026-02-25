#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tpcrn_rating_tot%'"
wp option delete 'themepacific_wpreview_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crn_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crn_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crn_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crn_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crn_rating_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crn_rating_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crn_rating_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crn_rating_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crn_rate_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crn_rate_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crn_rate_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crn_rate_style'"
