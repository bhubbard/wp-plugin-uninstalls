#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'import_qiita2wp_settings'
wp option delete 'import_qiita2wp_logs'

# Clear Cron Jobs
wp cron event delete 'import_qiita2wp_update_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_qiita2wp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_qiita2wp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_qiita2wp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_qiita2wp_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qiita2wp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qiita2wp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qiita2wp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qiita2wp_url'"
