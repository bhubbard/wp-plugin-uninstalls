#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpdotnet-ga-profile-id'
wp option delete 'dpdotnet-ga-cron-freq'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'danp-dot-net-ga-page-views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'danp-dot-net-ga-page-views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'danp-dot-net-ga-page-views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'danp-dot-net-ga-page-views'"
