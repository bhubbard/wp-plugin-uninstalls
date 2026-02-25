#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_imoptimizer_options'

# Delete Transients
wp transient delete 'bp_imoptimizer_conversion_errors'
wp transient delete 'bp_imoptimizer_settings_reset'

# Clear Cron Jobs
wp cron event delete 'bp_imoptimizer_periodic_log_cleanup_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_imoptimizer_pending_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_imoptimizer_pending_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_imoptimizer_pending_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_imoptimizer_pending_conversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
