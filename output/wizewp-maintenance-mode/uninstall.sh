#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wizemamo_settings'
wp option delete 'WIZEMAMO_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wizemamo_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wizemamo_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wizemamo_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wizemamo_dismissed_notices'"
