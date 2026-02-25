#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpr_options'
wp option delete 'wpreadable_ping_rescheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_pv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_pv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_pv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_pv'"
