#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registration'
wp option delete 'limited_email_domains'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioi_last_activity_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioi_last_activity_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioi_last_activity_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioi_last_activity_time'"
