#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'georgian_fonts_options'
wp option delete 'georgian_fonts_analytics_uuid'
wp option delete 'georgian_fonts_analytics_status'
wp option delete 'georgian_fonts_analytics_last_sent'

# Clear Cron Jobs
wp cron event delete 'georgian_fonts_analytics_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_dismissed_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_dismissed_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_dismissed_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_dismissed_widgets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closedpostboxes_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closedpostboxes_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closedpostboxes_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closedpostboxes_dashboard'"
