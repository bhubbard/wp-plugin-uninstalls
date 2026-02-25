#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharepulse'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SharePulse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SharePulse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SharePulse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SharePulse'"
