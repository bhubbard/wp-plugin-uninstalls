#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'telegram_notify_option_name'
wp option delete 'telegram_notify_option_name_tab2'
wp option delete 'telegram_notify_option_name_tab3'
wp option delete 'telegram_notify_option_name_tab4'
wp option delete 'telegram_notify_option_name_tab5'
wp option delete 'nftb_fix_1'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nftb_new_order_id_for_notification_%'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'nftb_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Telegram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Telegram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Telegram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Telegram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nftb_ignore_notyyy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nftb_ignore_notyyy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nftb_ignore_notyyy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nftb_ignore_notyyy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'votes_count'"
