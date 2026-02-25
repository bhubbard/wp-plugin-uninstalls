#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adsd_activation_time'
wp option delete 'adsd_new_options'
wp option delete 'adsd_new_logging_enabled'
wp option delete 'adsd_log_level'
wp option delete 'adsd_logging_enabled'
wp option delete 'adsd_log_levels'
wp option delete 'adsd_new_network_options'

# Delete Transients
wp transient delete 'adsd_new_cache'
wp transient delete 'adsd_new_rules_cache'

# Clear Cron Jobs
wp cron event delete 'adsd_new_cleanup_expired_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsd_selection_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsd_selection_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsd_selection_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsd_selection_mode'"
