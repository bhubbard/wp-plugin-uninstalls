#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbllms_options'
wp option delete 'cbllms_generation_history'
wp option delete 'cbllms_logo_url'

# Delete Transients
wp transient delete 'cbllms_generating'

# Clear Cron Jobs
wp cron event delete 'cbllms_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
