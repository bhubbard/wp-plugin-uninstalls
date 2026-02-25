#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eos_htoh_sent_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_notices'"
