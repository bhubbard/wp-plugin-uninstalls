#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Clear Cron Jobs
wp cron event delete 'lh_web_application_initial_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-attachment_id'"
