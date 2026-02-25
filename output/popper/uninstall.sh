#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popper'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popper_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popper_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popper_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popper_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popper_log_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popper_log_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popper_log_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popper_log_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_popper_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_popper_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_popper_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_popper_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popper_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popper_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popper_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popper_actions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popper_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popper_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popper_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popper_fields'"
