#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unn_settings'
wp option delete 'unno_activation_time'

# Delete Transients
wp transient delete 'unn_notices_cache'

# Clear Cron Jobs
wp cron event delete 'unn_cleanup_old_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_hidden_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_hidden_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_hidden_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_hidden_notices'"
