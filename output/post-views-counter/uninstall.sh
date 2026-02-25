#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_views_counter_settings_general'
wp option delete 'post_views_counter_settings_other'
wp option delete 'post_views_counter_settings_display'
wp option delete 'post_views_counter_pro_version'
wp option delete 'post_views_counter_version'
wp option delete 'post_views_counter_settings_integrations'
wp option delete 'post_views_counter_activation_date'

# Delete Transients
wp transient delete 'post_views_counter_ip_cache'

# Clear Cron Jobs
wp cron event delete 'pvc_reset_counts'
wp cron event delete 'pvc_flush_cached_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvc_dashboard'"
