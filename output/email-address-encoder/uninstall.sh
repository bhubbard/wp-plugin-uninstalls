#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eae_filter_priority'
wp option delete 'eae_search_in'
wp option delete 'eae_technique'
wp option delete 'eae_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eae_dismissed_automatic_warnings_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eae_dismissed_automatic_warnings_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eae_dismissed_automatic_warnings_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eae_dismissed_automatic_warnings_notice'"
